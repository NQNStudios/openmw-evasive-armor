local storage = require('openmw.storage')
local I = require('openmw.interfaces')

I.Settings.registerGroup({
   key = 'SettingsEvasiveArmor',
   page = 'EvasiveArmor',
   l10n = 'EvasiveArmor',
   name = "Evasive Armor settings",
   permanentStorage = false,
   settings = { },
})

local mechanicSettings = storage.globalSection('SettingsEvasiveArmor')

return { }
