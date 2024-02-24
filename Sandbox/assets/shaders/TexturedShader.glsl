#type vertex
#version 330 core
	
	layout(location = 0) in vec4 a_Position;
	layout(location = 1) in vec3 a_Color;
	layout(location = 2) in vec2 a_UV;
	
	uniform mat4 u_ViewProjection;
	uniform mat4 u_Model;
	out vec3 v_Color;
	out vec2 v_UV;

	void main()
	{
		v_UV = a_UV;
		v_Color = a_Color;
		gl_Position = u_ViewProjection * u_Model * a_Position;
	}



#type fragment
#version 330 core
	
	layout(location = 0) out vec4 outCol;
	uniform sampler2D u_danboTex;
	uniform vec3 u_Color;
	in vec3 v_Color;
	in vec2 v_UV;

	void main()
	{
		vec3 temp = texture(u_danboTex, v_UV).rgb;
		temp = temp * u_Color;				
		outCol = vec4(temp, 1.0);
	}
