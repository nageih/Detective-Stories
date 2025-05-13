#version 150

uniform sampler2D InSampler;
uniform sampler2D MainDepthSampler;

in vec2 texCoord;
in vec2 oneTexel;
out vec4 fragColor;
float near = 1; 
float far  = 2;
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

void main(){
    float depth = clamp(LinearizeDepth(texture(MainDepthSampler,texCoord).r),0,0.1);
    vec3 color = vec3(texture(InSampler,texCoord).r+1*depth,texture(InSampler,texCoord).g+1*depth,texture(InSampler,texCoord).b+1*depth);
    fragColor = vec4(color, 1.0);
}
