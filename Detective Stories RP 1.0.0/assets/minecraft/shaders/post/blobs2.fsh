#version 150

uniform sampler2D DiffuseSampler;
uniform sampler2D DiffuseDSampler;

in vec2 texCoord;
in vec2 oneTexel;

uniform float Radius;

out vec4 fragColor;
float near = 0.1; 
float far  = 1000.0;
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

vec3 hue(float h)
{
    float r = abs(h * 6.0 - 3.0) - 1.0;
    float g = 2.0 - abs(h * 6.0 - 2.0);
    float b = 2.0 - abs(h * 6.0 - 4.0);
    return clamp(vec3(r,g,b), 0.0, 1.0);
}

vec3 HSVtoRGB(vec3 hsv) {
    return ((hue(hsv.x) - 1.0) * hsv.y + 1.0) * hsv.z;
}

vec3 RGBtoHSV(vec3 rgb) {
    vec3 hsv = vec3(0.0);
    hsv.z = max(rgb.r, max(rgb.g, rgb.b));
    float min = min(rgb.r, min(rgb.g, rgb.b));
    float c = hsv.z - min;

    if (c != 0.0)
    {
        hsv.y = c / hsv.z;
        vec3 delta = (hsv.z - rgb) / c;
        delta.rgb -= delta.brg;
        delta.rg += vec2(2.0, 4.0);
        if (rgb.r >= hsv.z) {
            hsv.x = delta.b;
        } else if (rgb.g >= hsv.z) {
            hsv.x = delta.r;
        } else {
            hsv.x = delta.g;    
        }
        hsv.x = fract(hsv.x / 6.0);
    }
    return hsv;
}

void main(){
    float depth = LinearizeDepth(texture2D(DiffuseDSampler,texCoord).r);
    float dist = distance(texCoord,vec2(0.5,0.5));
    float rdist = 0.4 - dist;
    vec4 color = texture(DiffuseSampler,texCoord);
    vec4 depthcolor = vec4(2.0/(depth/rdist),2.0/(depth/rdist),2.0/(depth/rdist),1.0);
    //color.r = 1.0;
    //color.b = 1.0;
    //color.g = 1.0;
    if (dist<0.4){
        fragColor = vec4(color.rgb + depthcolor.rgb,1.0);
    } else {
        fragColor = color;
    }
    
}
