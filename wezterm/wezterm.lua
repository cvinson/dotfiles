local wezterm = require('wezterm')
local colors = require('lua/rose-pine').colors()
local window_frame = require('lua/rose-pine').window_frame()

return {
  colors = colors,
  window_frame = window_frame,   -- needed only if using fancy tab bar
  font = wezterm.font_with_fallback {
    'FiraCode Nerd Font Mono',
    'JetBrains Mono'
  },
  font_size = 16,
  freetype_load_flags = 'NO_HINTING',
  freetype_load_target = 'Light',
  freetype_render_target = 'HorizontalLcd'
}
