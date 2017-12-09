local lain = require("lain")
local muhsettings = require("muhsettings")

local markup = lain.util.markup

local myalsa = lain.widget.alsa({

    settings = function()
        header      = volume_now.status == "off" and ' ' or ' '
        vol_level   = volume_now.level

        widget:set_markup(
            markup.font(
                muhsettings.font.medium,
                markup(muhsettings.solarized.base0, header) ..
                markup(muhsettings.solarized.base01, vol_level)))

    end
})

return myalsa
