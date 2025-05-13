#version 150

#moj_import <fog.glsl>

uniform sampler2D Sampler0;

uniform vec4 ColorModulator;
uniform float FogStart;
uniform float FogEnd;
uniform vec4 FogColor;
uniform float GameTime;

uniform vec2 ScreenSize;

in float vertexDistance;
in vec4 vertexColor;
in vec2 texCoord0;

flat in int p;

out vec4 fragColor;

#moj_import <effect_utils.glsl>

void main() {
    vec4 color = texture(Sampler0, texCoord0) * vertexColor * ColorModulator;

    if (p != 0) {
        vec2 centerUV = gl_FragCoord.xy / ScreenSize - 0.5;
        switch (p) {
            case 2: // Cut with height 0.01
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.01;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 3: // Cut with height 0.02
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.02;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 4: // Cut with height 0.03
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.03;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 5: // Cut with height 0.04
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.04;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 6: // Cut with height 0.05
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.05;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 7: // Cut with height 0.06
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.06;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 8: // Cut with height 0.07
            {
                color = vec4(0, 0, 0, 1);
                float vignetteHeight = 0.07;
                if (abs(centerUV.y) < 0.5 - vignetteHeight) {
                    discard;
                }
                break;
            }
            case 9: // Blink with vignette
            {
                color = vec4(0, 0, 0, clamp(length(centerUV * vec2(0.8, 0.5 / (1 - vertexColor.a))) - 0.6, 0, 1));

                float vignetteHeight = 0.2; // Static vignette size
                if (abs(centerUV.y) > 0.5 - vignetteHeight) {
                    color.rgb *= 0.5; // Darken edges
                }
                break;
            }
            case 1: // Red vignette
            {
                color = vec4(0.8, 0, 0, length(centerUV) * vertexColor.a);
                break;
            }
        }
    }

    if (color.a < 0.001) {
        discard;
    }

    fragColor = linear_fog(color, vertexDistance, FogStart, FogEnd, FogColor);
}
