# bent-shaders

# Vertex Shaders

## spritesheet.vs 
Renders quad at uniform size and position

## uv_passthrough_scroll.vs
UV texture passthru offset by time

## uv_passthrough.vs
Ordinary uv texture vertex shader

# Fragment Shaders

## alphaBlend.fs 
Sets alpha to a `min` value

## alphaTest.fs
Uses `discard` if alpha channel < 1.0

## uv_texture.fs
Ordinary uv texture fragment shader

## uv_texture_texblend.fs
Uses `mix` to mix two textures
