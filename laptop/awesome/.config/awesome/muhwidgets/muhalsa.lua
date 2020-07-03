local lain = require("lain")
local markup = lain.util.markup
local muhsettings = require("muhsettings")
local theme = require("beautiful")



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
                muhsettings.font.regular,
                markup(muhsettings.theme.base00, header) ..
                markup(muhsettings.theme.base00, vol_level)))

    end
})

return myalsa
