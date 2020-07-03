-- TODO Entender PulseAudio antes de hacer el widget

local lain = require("lain")

local markup = lain.util.markup

local muhsettings = {}
muhsettings.font 	= "Iosevka Light 8"
muhsettings.blue	= "#268bd2"
muhsettings.gray01	= "#586e75"
muhsettings.gray1	= "#93a1a1"

local myalsa = lain.widget.pulseaudio({

	settings = function()
		header 		= "Vol> "
		vol_level	= volume_now.level

		if volume_now.status == "off" then
			vol_level = " M "
		else
			vol_level = vol_level 
		end

		widget:set_markup(
			markup.font(
				muhsettings.font, 
				markup(muhsettings.gray01, " | ") .. markup(muhsettings.gray1, header) .. markup(muhsettings.blue, vol_level) .. markup(muhsettings.gray01, " | ")))

	end
})

return myalsa
