#version 150

in vec4 vertex;
in vec3 normal;
in vec4 inColor;

out VS_OUT
{
  vec4 fP;
  vec3 fN;
  vec4 out_color;
}vs_out;

uniform mat4 mvp_matrix;
uniform mat4 mv_matrix;

void main(void)
{
   vs_out.out_color=inColor;
   vs_out.fP = mv_matrix * vertex;
   vs_out.fN = mat3(mv_matrix)* normal;
   gl_Position = mvp_matrix * vertex;
}
