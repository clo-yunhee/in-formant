#version 450
#extension GL_ARB_separate_shader_objects : enable

layout (location = 0) in vec2 coord2d;
layout (location = 0) out vec4 f_color;

layout (binding = 0) uniform UniformBuffer {
    float offset_x;
    float scale_x;
} ubo;

void main() {
    gl_Position = vec4((coord2d.x + ubo.offset_x) * ubo.scale_x, coord2d.y, 0.0, 1.0);
    f_color = vec4(coord2d.xy / 2.0 + 0.5, 1.0, 1.0);
}
