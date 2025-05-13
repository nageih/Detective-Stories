#version 150

uniform sampler2D InSampler;
uniform sampler2D MainDepthSampler;

in vec2 texCoord;
in vec2 oneTexel;

uniform vec2 InSize;

uniform vec2 BlurDir;
uniform float Radius;

out vec4 fragColor;
float near = 0.1; 
float far  = 2;
float LinearizeDepth(float depth) 
{
    float z = depth * 2.0 - 1.0;
    return (near * far) / (far + near - z * (far - near));    
}

void main() {
    float depth = LinearizeDepth(texture(MainDepthSampler,texCoord).r);
    float ldepth = LinearizeDepth(texture(MainDepthSampler,vec2(0.5,0.5)).r);
    float d = depth-ldepth;
    if (depth < 0.6){
        d = 0;
    } else {
        d = abs(d);
    }
    vec2 b = vec2(clamp(BlurDir.x*d,0.0,1.0),clamp(BlurDir.y*d,0.0,1.0));
    vec4 blurred = vec4(0.0);
    float totalStrength = 0.0;
    float totalAlpha = 0.0;
    float totalSamples = 0.0;
    for(float r = -Radius; r <= Radius; r += 1.0) {
        vec4 sampleValue = texture(InSampler, texCoord + oneTexel * r * b);

		// Accumulate average alpha
        totalAlpha = totalAlpha + sampleValue.a;
        totalSamples = totalSamples + 1.0;

		// Accumulate smoothed blur
        float strength = 1.0 - abs(r / Radius);
        totalStrength = totalStrength + strength;
        blurred = blurred + sampleValue;
    }
    fragColor = vec4(blurred.rgb / (Radius * 2.0 + 1.0), totalAlpha);
}
