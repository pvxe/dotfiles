gears = require("gears")
muhsettings = require("muhwidgets.muhsettings")
muhtheme = require("muhwidgets.muhsettings").theme

S_base03    =  muhtheme.base03
S_base02    =  muhtheme.base02
S_base01    =  muhtheme.base01
S_base00    =  muhtheme.base00
S_base0     =  muhtheme.base0
S_yellow    =  muhtheme.yellow
S_orange    =  muhtheme.orange
S_red       =  muhtheme.red
S_magenta   =  muhtheme.magenta
S_violet    =  muhtheme.violet
S_blue      =  muhtheme.blue
S_cyan      =  muhtheme.cyan
S_green     =  muhtheme.green

local os = { getenv = os.getenv }

-- {{{ Main
local theme =   {}
theme.dir   =   os.getenv("HOME") .. "/.config/awesome/themes/muhtheme"
-- theme.wallpaper = "/usr/share/awesome/themes/muhtheme/solarized-background.png"
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
--theme.wallpaper = theme.dir .. '/wallpapers/solarized_arch_logo.png'
theme.wallpaper = theme.dir .. '/wallpapers/tomorrow_wp2.png'
-- }}}

-- {{{ Styles
theme.font      = muhsettings.font.light
--theme.font  =   "xos4 Terminus 10"

-- {{{ Colors
theme.fg_normal  = S_base00
theme.fg_focus   = S_base0
theme.fg_urgent  = "#CC9393"
theme.bg_normal  = S_base03
theme.bg_focus   = S_base02
theme.bg_urgent  = "#3F3F3F"
theme.bg_systray = theme.bg_normal
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
--theme.tooltip_font  = "Iosevka Light 9"
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
--theme.taglist_shape = gears.shape.rounded_rect
--theme.taglist_bg_occupied = S_green
theme.taglist_shape_border_width = 4
theme.taglist_shape_border_color = S_base03
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
theme.taglist_squares_sel   = "/usr/share/awesome/themes/muhtheme/taglist/squarefz.png"
theme.taglist_squares_unsel = "/usr/share/awesome/themes/muhtheme/taglist/squarez.png"
--theme.taglist_squares_resize = "false"
-- }}}

-- {{{ Misc
--theme.awesome_icon           = "/usr/share/awesome/themes/muhtheme/awesome-icon.png"
theme.awesome_icon      = "/home/puchero/Downloads/sugus_solarized_2.png"
theme.menu_submenu_icon      = "/usr/share/awesome/themes/default/submenu.png"
-- }}}

-- {{{ Layout
theme.layout_tile       = "~/.config/awesome/themes/muhtheme/layouts/tile.png"
theme.layout_tileleft   = "~/.config/awesome/themes/muhtheme/layouts/tileleft.png"
theme.layout_tilebottom = "~/.config/awesome/themes/muhtheme/layouts/tilebottom.png"
theme.layout_tiletop    = "~/.config/awesome/themes/muhtheme/layouts/tiletop.png"
theme.layout_fairv      = "~/.config/awesome/themes/muhtheme/layouts/fairv.png"
theme.layout_fairh      = "~/.config/awesome/themes/muhtheme/layouts/fairh.png"
theme.layout_spiral     = "~/.config/awesome/themes/muhtheme/layouts/spiral.png"
theme.layout_dwindle    = "~/.config/awesome/themes/muhtheme/layouts/dwindle.png"
theme.layout_max        = "~/.config/awesome/themes/muhtheme/layouts/max.png"
theme.layout_fullscreen = "~/.config/awesome/themes/muhtheme/layouts/fullscreen.png"
theme.layout_magnifier  = "~/.config/awesome/themes/muhtheme/layouts/magnifier.png"
theme.layout_floating   = "~/.config/awesome/themes/muhtheme/layouts/floating.png"
theme.layout_cornernw   = "/usr/share/awesome/themes/muhtheme/layouts/cornernw.png"
theme.layout_cornerne   = "/usr/share/awesome/themes/muhtheme/layouts/cornerne.png"
theme.layout_cornersw   = "/usr/share/awesome/themes/muhtheme/layouts/cornersw.png"
theme.layout_cornerse   = "/usr/share/awesome/themes/muhtheme/layouts/cornerse.png"
-- }}}

-- {{{ Titlebar
theme.titlebar_close_button_focus  = "/usr/share/awesome/themes/muhtheme/titlebar/close_focus.png"
theme.titlebar_close_button_normal = "/usr/share/awesome/themes/muhtheme/titlebar/close_normal.png"

theme.titlebar_minimize_button_normal = "/usr/share/awesome/themes/default/titlebar/minimize_normal.png"
theme.titlebar_minimize_button_focus  = "/usr/share/awesome/themes/default/titlebar/minimize_focus.png"

theme.titlebar_ontop_button_focus_active  = "/usr/share/awesome/themes/muhtheme/titlebar/ontop_focus_active.png"
theme.titlebar_ontop_button_normal_active = "/usr/share/awesome/themes/muhtheme/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_inactive  = "/usr/share/awesome/themes/muhtheme/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_inactive = "/usr/share/awesome/themes/muhtheme/titlebar/ontop_normal_inactive.png"

theme.titlebar_sticky_button_focus_active  = "/usr/share/awesome/themes/muhtheme/titlebar/sticky_focus_active.png"
theme.titlebar_sticky_button_normal_active = "/usr/share/awesome/themes/muhtheme/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_inactive  = "/usr/share/awesome/themes/muhtheme/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_inactive = "/usr/share/awesome/themes/muhtheme/titlebar/sticky_normal_inactive.png"

theme.titlebar_floating_button_focus_active  = "/usr/share/awesome/themes/muhtheme/titlebar/floating_focus_active.png"
theme.titlebar_floating_button_normal_active = "/usr/share/awesome/themes/muhtheme/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_inactive  = "/usr/share/awesome/themes/muhtheme/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_inactive = "/usr/share/awesome/themes/muhtheme/titlebar/floating_normal_inactive.png"

theme.titlebar_maximized_button_focus_active  = "/usr/share/awesome/themes/muhtheme/titlebar/maximized_focus_active.png"
theme.titlebar_maximized_button_normal_active = "/usr/share/awesome/themes/muhtheme/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_inactive  = "/usr/share/awesome/themes/muhtheme/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_inactive = "/usr/share/awesome/themes/muhtheme/titlebar/maximized_normal_inactive.png"
-- }}}
-- }}}

return theme

-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
