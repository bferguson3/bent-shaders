# bent-shaders

#Vertex Shaders

## uv_passthrough_scroll.vs
UV texture passthru offset by time

##uv_passthrough.vs
Ordinary uv texture vertex shader

#Fragment Shaders

##uv_texture.fs
Ordinary uv texture fragment shader

##uv_texture_texblend.fs
Uses `blend` to mix two textures

## alphaTest.fs
Uses `discard` if alpha channel < 1.0
