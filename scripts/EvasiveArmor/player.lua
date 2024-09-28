local storage = require('openmw.storage')
local I = require('openmw.interfaces')

I.Settings.registerPage({
   key = 'EvasiveArmor',
   l10n = 'EvasiveArmor',
   name = 'Evasive Armor',
   description = 'page_description',
})

I.Settings.registerGroup({
   key = 'SettingsEvasiveArmor',
   page = 'EvasiveArmor',
   l10n = 'EvasiveArmor',
   name = "Evasive Armor settings",
   permanentStorage = false,
   settings = {
      {
         key = 'unarmoredProtection',
         name = "Unarmored Protection",
         description = "When this option is off, you won't get any armor bonus for your unarmored skill, making it fully focused on evading attacks.",
         default = false,
         renderer = 'checkbox',
      },
      {
         key = 'evasionContribution',
         name = "Evasion Contribution",
         description = "The higher this value, the more your armor, or its absense, contributes to your evasion modifier. Referenced value is an evasion modifier of a character with 100 Unarnored Skill, no armor equipped and no other sources of evasion.",
         default = 40,
         renderer = 'number',
         argument = {
            integer = true,
            min = 0,
            max = 100,
         },
      },
      {
         key = 'armorTypePenalty',
         name = "Armor Type Penalty",
         description = "The higher this value, the more penalized you are for wearing heavier types of armor. You get no penalty to your evasion for being unarmored, once the penalty for light, twice the penalty for medium and three times the penalty for heavy armor.",
         default = 35,
         renderer = 'number',
         argument = {
            integer = true,
            min = 0,
            max = 100,
         },
      },
   },
})

local mechanicSettings = storage.playerSection('SettingsEvasiveArmor')

return {}