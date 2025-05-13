#version 150

uniform float AmbientLightFactor;
uniform float SkyFactor;
uniform float BlockFactor;
uniform int UseBrightLightmap;
uniform vec3 SkyLightColor;
uniform float NightVisionFactor;
uniform float DarknessScale;
uniform float DarkenWorldFactor;
uniform float BrightnessFactor;

in vec2 texCoord;

out vec4 fragColor;

float get_block_brightness(float level) {
    float curved_level = level / (3 - 2 * level);
    return mix(clamp(curved_level - 0.05, 0, 1), 1.0, AmbientLightFactor);
}

float get_sky_brightness(float level) {
    level -= 0.5;
    float curved_level = (level * 3.5) / (10 - 9 * 1.4 * level);
    return mix(clamp(curved_level, 0, 1), 1.0, AmbientLightFactor);
}

void main() {
    // Фикс для GUI
    if(texCoord.x * 16 >= 15 && texCoord.y * 16 >= 15) {
        fragColor = vec4(1.0);
        return; 
    }

    // Освещение блоков (холодные тона)
    float block_brightness = get_block_brightness(texCoord.x) * BlockFactor;
    vec3 block_coloured_light = vec3(
        block_brightness * 0.8,                        // Уменьшен красный
        block_brightness * 0.8,                        // Уменьшен зелёный
        block_brightness * 1                           // Усилен синий
    );

    // Лунный свет неба (синий доминирует)
    float sky_brightness = get_sky_brightness(texCoord.y) * SkyFactor;
    vec3 sky_coloured_light = vec3(
        sky_brightness * 0.4,                          // Красный
        sky_brightness * 0.5,                          // Зелёный
        sky_brightness * 1.3                            // Синий
    ) * SkyLightColor;

    vec3 color = block_coloured_light + sky_coloured_light;

    if(UseBrightLightmap == 1) {
        color = 0.4 + block_coloured_light / vec3(0.6, 0.6, 1.0); // Холодный оттенок
    }

    // adjust for night vision effect
    if (NightVisionFactor > 0.0) {
        color = mix(color, vec3(1), NightVisionFactor);
    }
    // adjust for darkness effect
    if (DarknessScale > 0.0) {
        color = clamp(color - vec3(DarknessScale), 0.0, 0.5);
    }
    // adjust for brightness setting
    color += (BrightnessFactor - 0.2) / 3.33;

    fragColor = vec4(color, 1);
}