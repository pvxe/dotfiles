local lain = require("lain")
local muhsettings = require("muhsettings")

local markup = lain.util.markup

local myalsa = lain.widget.alsa({

    settings = function()
        -- Use pacmd to get active port in the only sink I have
        get_active_port_cmd = "pacmd list-sinks | grep -i 'active port' | cut -d':' -f2"
        handle      = io.popen(get_active_port_cmd)
        result      = handle:read("*a")
        handle:close()

        icon        = string.find(result, "speaker") ~= nil and ' ' or ' '
        --header      = volume_now.status == "off" and ' ' or ' '
        header      = icon
        vol_level   = volume_now.level

        widget:set_markup(
            markup.font(
                muhsettings.font.medium,
                markup(muhsettings.solarized.base0, header) ..
                markup(muhsettings.solarized.base01, vol_level)))

    end
})

return myalsa
