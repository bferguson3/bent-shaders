# bent-shaders

## General tips
- Avoid conditional branching in shaders where possible for speed
- Passing a transform offset to a shader to adjust vertex position is more efficient than recreating the object each frame
- Use `mix(a, b, 1/n)` where applicable instead of `(a + b)/n`
- Use `min()` and `max()` wherever possible
- `discard` tosses a fragment completely
- Use `MAD` operations when available (Multiply And Add, `(a*b)+c` is very efficient on GPUs)
- Order of operations matters especially in matrix math. ALWAYS perform operations in order of:<br>
```
1. translate
2. rotate
3. scale
```
to ensure column-major matrix math works properly.

# Vertex Shaders

## spritesheet.vs 
Renders segment of texture at uniform size and position

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
