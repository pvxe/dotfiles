local lain = require("lain")
local gears = require("gears")
local wibox = require("wibox")

local markup = lain.util.markup
local muhsettings = require("muhsettings")

local lain_bat = lain.widget.bat({
    settings = function ()
        bat_perc = bat_now.perc
    end
})

local muhbatt_pb = wibox.widget {
    {
        max_value = 100,
        value = bat_perc,
        forced_height = 10,
        forced_width = 75,
        paddings = 1,
        border_width = 0,
        border_color = muhsettings.theme.cyan,
        color = muhsettings.theme.green,
        background_color = muhsettings.theme.base02,
        shape = gears.shape.rounded_bar,
        widget = wibox.widget.progressbar,
    },
    {
        layout = wibox.container.place,
        {markup = markup.fontfg(muhsettings.font.medium, muhsettings.theme.base01, bat_perc), widget = wibox.widget.textbox,},
        forced_width = 75,
        fill_horizontal = true,
    },
    spacing = 5,
    layout = wibox.layout.stack

}

return muhbatt_pb
