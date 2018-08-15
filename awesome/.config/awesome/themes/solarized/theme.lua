------------------------------------------
--  "Solarizen" awesome theme   --
--    By Adrian C. (anrxc)              --
--    And Pucherito huehue              --
------------------------------------------

gears = require("gears")

-- TODO: Can be moved to muhsettings already, and then require it
-- SOLARIZED CONSTANTS
S_base03    =  "#002b36"
S_base02    =  "#073642"
S_base01    =  "#586e75"
S_base00    =  "#657b83"
S_base0     =  "#839496"
S_base1     =  "#93a1a1"
S_base2     =  "#eee8d5"
S_base3     =  "#fdf6e3"
S_yellow    =  "#b58900"
S_orange    =  "#cb4b16"
S_red       =  "#dc322f"
S_magenta   =  "#d33682"
S_violet    =  "#6c71c4"
S_blue      =  "#268bd2"
S_cyan      =  "#2aa198"
S_green     =  "#859900"

local os = { getenv = os.getenv }

-- {{{ Main
local theme =   {}
theme.dir   =   os.getenv("HOME") .. "/.config/awesome/themes/solarized"
-- theme.wallpaper = "/usr/share/awesome/themes/solarized/solarized-background.png"
--theme.wallpaper = "/home/puchero/Pictures/solarized_wp2.png"
--theme.wallpaper = "/home/puchero/Pictures/solarized_linus_wp.png"
--theme.wallpaper = function (screen, tag)
--    local wp = theme.dir .. '/wallpapers/'
--    if screen.selected_tag ~= nil and screen.selected_tag.index == 4 then
--        wp = wp .. 'solarized_linus_wp.png'
--    else
--        wp = wp .. 'result.jpg'
--    end
--    return wp
--end
theme.wallpaper = theme.dir .. '/wallpapers/solarized_arch_logo.png'
-- }}}

-- {{{ Styles
theme.font      = "Iosevka Light 9"
--theme.font  =   "xos4 Terminus 10"

-- {{{ Colors
theme.fg_normal  = S_base00
theme.fg_focus   = S_base0
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = S_base02
theme.bg_focus   = S_base03
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = S_base02
-- }}}

-- {{{ Borders
theme.useless_gap   = 0
theme.border_width  = 2
theme.border_normal = S_base02
theme.border_focus  = S_base03
theme.border_marked = "#CC9393"
-- }}}

-- {{{ Titlebars
theme.titlebar_bg_focus  = S_base02
theme.titlebar_bg_normal = S_base02
-- }}}

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- Example:
--theme.taglist_bg_focus = "#CC9393"
theme.tooltip_font  = "Iosevka Light 9"
-- }}}

-- {{{ Widgets
-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.fg_widget        = "#AECF96"
--theme.fg_center_widget = "#88A175"
--theme.fg_end_widget    = "#FF5656"
--theme.bg_widget        = "#494B4F"
--theme.border_widget    = "#3F3F3F"
--theme.tasklist_disable_task_name = true
theme.taglist_shape = gears.shape.rounded_rect
theme.taglist_shape_border_width = 4
theme.taglist_shape_border_color = S_base03
theme.tasklist_shape = gears.shape.powerline
theme.prompt_fg = S_cyan

--theme.bg_systray =
-- }}}

-- {{{ Mouse finder
theme.mouse_finder_color = S_green
-- mouse_finder_[timeout|animate_timeout|radius|factor]
-- }}}

-- {{{ Menu
-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_height = 20
theme.menu_width  = 150
-- }}}

-- {{{ Icons
-- {{{ Taglist
theme.taglist_squares_sel   = "/usr/share/awesome/themes/solarized/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/solarized/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
--theme.awesome_icon           = "/usr/share/awesome/themes/solarized/awesome-icon.png"
theme.awesome_icon      = "/home/puchero/Downloads/sugus_solarized_2.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "~/.config/awesome/themes/solarized/layouts/tile.png"
theme.layout_tileleft   = "~/.config/awesome/themes/solarized/layouts/tileleft.png"
theme.layout_tilebottom = "~/.config/awesome/themes/solarized/layouts/tilebottom.png"
theme.layout_tiletop    = "~/.config/awesome/themes/solarized/layouts/tiletop.png"
theme.layout_fairv      = "~/.config/awesome/themes/solarized/layouts/fairv.png"
theme.layout_fairh      = "~/.config/awesome/themes/solarized/layouts/fairh.png"
theme.layout_spiral     = "~/.config/awesome/themes/solarized/layouts/spiral.png"
theme.layout_dwindle    = "~/.config/awesome/themes/solarized/layouts/dwindle.png"
theme.layout_max        = "~/.config/awesome/themes/solarized/layouts/max.png"
theme.layout_fullscreen = "~/.config/awesome/themes/solarized/layouts/fullscreen.png"
theme.layout_magnifier  = "~/.config/awesome/themes/solarized/layouts/magnifier.png"
theme.layout_floating   = "~/.config/awesome/themes/solarized/layouts/floating.png"
theme.layout_cornernw   = "/usr/share/awesome/themes/solarized/layouts/cornernw.png"
theme.layout_cornerne   = "/usr/share/awesome/themes/solarized/layouts/cornerne.png"
theme.layout_cornersw   = "/usr/share/awesome/themes/solarized/layouts/cornersw.png"
theme.layout_cornerse   = "/usr/share/awesome/themes/solarized/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/solarized/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/solarized/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = "/usr/share/awesome/themes/default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "/usr/share/awesome/themes/default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/solarized/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/solarized/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/solarized/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/solarized/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/solarized/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/solarized/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/solarized/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/solarized/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/solarized/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/solarized/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/solarized/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/solarized/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/solarized/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/solarized/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/solarized/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/solarized/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
