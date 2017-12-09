local lain = require("lain")

local markup = lain.util.markup
local muhsettings   = require("muhsettings")


local mybattery = lain.widget.bat({
    --battery = "BAT0" --default "BAT0"
    --timeout = 1,
    settings = function()
        --header = "Bat> "

        if bat_now.ac_status == 1 then
            status_color = muhsettings.solarized.green
        else
            status_color = muhsettings.solarized.base0
        end
        -- TODO: Map bat perc into some of the unicode \uf24[0-4]
        --                and then add hover function to see exact
        -- perc.
        local perc = bat_now.perc
        if perc > 90 then
                bat = " "
        elseif perc > 50 then
                bat = " "
        elseif perc > 25 then
                bat = " "
        elseif perc > 10 then
                bat = " "
        else
                bat = " "
        end

        widget:set_markup(
            markup.font(
                muhsettings.font.medium,
                markup(status_color, bat )))
    end
})

return mybattery
