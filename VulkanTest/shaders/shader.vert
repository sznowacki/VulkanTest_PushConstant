#version 450
#extension GL_ARB_separate_shader_objects : enable

layout(push_constant) uniform matrix{
    mat4 model;
    vec3 color;
} Matrix;

layout(location = 0) in vec2 inPosition;
layout(location = 1) in vec3 inColor;

layout(location = 0) out vec3 fragColor;

void main() {
    gl_Position = Matrix.model * vec4(inPosition, 0.0, 1.0);
    fragColor = Matrix.color + vec3(inColor);
}