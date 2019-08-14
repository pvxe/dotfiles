local lain = require("lain")

local markup = lain.util.markup
local muhsettings   = require("muhsettings")


local mybattery = lain.widget.bat({
    --battery = "BAT0" --default "BAT0"
    --timeout = 1,
    settings = function()
        local perc = bat_now.perc

        if bat_now.ac_status == 1 then
            status_color = muhsettings.theme.green
        else
            status_color = muhsettings.theme.base00
        end

        if perc > 90 then
                bat = ""
        elseif perc > 50 then
                bat = ""
        elseif perc > 25 then
                bat = ""
        elseif perc > 10 then
                bat = ""
        else
                bat = ""
        end

        widget:set_markup(
            markup.font(
                muhsettings.font.regular,
                markup(status_color, bat )))
    end
})

return mybattery
