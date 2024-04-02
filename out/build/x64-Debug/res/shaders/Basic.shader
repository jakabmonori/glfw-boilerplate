#shader vertex
#version 330 core

layout(location = 0) in vec4 position; 

void main()
{
	gl_Position = position;	
};

#shader fragment
#version 330 core

layout(location = 0) out vec4 color; 

/*
	UNIFORM -> c++ kódból átadott változó
*/
uniform float viewportWidth;

void main()
{
	float normalizedX = abs(gl_FragCoord.x / viewportWidth);
	color = vec4(0.0f, 0.3f, 0.0f, 1.0f);	
};