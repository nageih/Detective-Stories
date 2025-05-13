#version 150

#moj_import <fog.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in ivec2 UV2;

uniform sampler2D Sampler0;
uniform sampler2D Sampler2;

uniform mat4 ModelViewMat;
uniform mat4 ProjMat;
uniform int FogShape;
uniform vec2 ScreenSize;

out float vertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;

flat out int p;

void main() {
    // TEXT SHADOW REMOVER
    if (Color.r < 0.3 && Color.g < 0.3 && Color.b < 0.3 && Position.z == 0) {
        vertexColor = vec4(0);
    }
    texCoord0 = UV0;

    vec4 transformedPosition = vec4(Position, 1.0);
    vec2 screenSize = 2.0 / vec2(ProjMat[0][0], -ProjMat[1][1]);

    // Точное смещение на основе цвета
    if (Color.r == 0.996078431372549 && Color.g == 1.0 && Color.b == 1.0) {
        transformedPosition.x += screenSize.x * 0.5 - 120.2; // Правый верхний угол
        transformedPosition.y += 5.0;
    } else if (Color.r == 0.992156862745098 && Color.g == 1.0 && Color.b == 1.0) {
        transformedPosition.x -= screenSize.x * 0.5 - 70.2; // Левый верхний угол
        transformedPosition.y += 1.0;
    }

    // Преобразование в экранные координаты
    gl_Position = ProjMat * ModelViewMat * transformedPosition;
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);

    vertexDistance = length((ModelViewMat * vec4(Position, 1)).xyz);
    texCoord0 = UV0;

    const vec2[4] corners = vec2[4](vec2(0), vec2(0, 1), vec2(1), vec2(1, 0));
    vec2 coord = corners[gl_VertexID % 4];

    vec4 col = round(texture(Sampler0, UV0) * 255);

    p = 0;
    if (col.a == 251 && Position.z > 0)
    {   
        p = int(col.b);
        gl_Position.xy = vec2(coord * 2 - 1) * vec2(1, -1);
        gl_Position.zw = vec2(-1, 1);
        vertexColor = Color;
    }
    // Передача значений в фрагментный шейдер
    vertexDistance = fog_distance(Position, FogShape);
    vertexColor = Color * texelFetch(Sampler2, UV2 / 16, 0);
    texCoord0 = UV0;


}
