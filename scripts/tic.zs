//#合金移除
mods.tconstruct.Alloy.removeRecipe(<liquid:energetic_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:vibrant_alloy>);
mods.tconstruct.Alloy.removeRecipe(<liquid:pulsating_iron>);
mods.tconstruct.Alloy.removeRecipe(<liquid:conductive_iron>);

//#熔融液体移除
mods.tconstruct.Melting.removeRecipe(<liquid:uranium>);
mods.tconstruct.Melting.removeRecipe(<liquid:glowstone>);
mods.tconstruct.Melting.removeRecipe(<liquid:redstone>);
mods.tconstruct.Melting.removeRecipe(<liquid:ender>);
mods.tconstruct.Melting.removeRecipe(<liquid:pigiron>);

//#地质探秘工具
recipes.addShaped(<tconstruct:cleaver>.withTag({ench: [{lvl: 3 as short, id: 21 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 13.0 as float, FreeModifiers: 3, Durability: 1464, HarvestLevel: 4, Attack: 19.9 as float}, Unbreakable: 1 as byte, RepairCost: 0, display: {Name: "§6氮化钛刀"}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 13.0 as float, FreeModifiers: 0, Durability: 1464, HarvestLevel: 4, Attack: 26.54998 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 21, Materials: ["xu_evil_metal", "xu_evil_metal", "xu_evil_metal", "xu_evil_metal"], Modifiers: ["beheading_cleaver", "creative", "reinforced", "extratraitsteelstiff", "soulbound", "sharpness", "haste", "luck", "necrotic"]}, Modifiers: [{identifier: "xu_withering", color: -131160, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "creative", color: 0, level: 21}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "stiff", color: -5789785, level: 1}, {identifier: "extratraitsteelstiff", color: -5789785}, {identifier: "soulbound", color: 16120748}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "luck", current: 360, color: 2970082, level: 3, max: 360, modifierUsed: 1 as byte, extraInfo: "359 / 360"}, {identifier: "necrotic", color: 6160384, level: 5}], Traits: ["xu_withering", "reinforced", "stiff", "luck", "necrotic"]}), [[null, null, <rockhounding_chemistry:alloy_parts:34>],[null, <rockhounding_chemistry:alloy_parts:34>, null], [<rockhounding_chemistry:alloy_items_tech:34>, null, null]]);
recipes.addShaped(<tconstruct:scythe>.withTag({ench: [{lvl: 3 as short, id: 21 as short}, {lvl: 3 as short, id: 35 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 1449, HarvestLevel: 3, Attack: 6.0 as float}, Unbreakable: 1 as byte, RepairCost: 0, display: {Name: "§7钕磁铁镰"}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 29.545927 as float, FreeModifiers: 0, Durability: 1449, HarvestLevel: 3, Attack: 15.520056 as float}, Special: {Categories: ["harvest", "weapon", "tool", "aoe"]}, TinkerData: {UsedModifiers: 36, Materials: ["steel", "steel", "steel", "steel"], Modifiers: ["creative", "smite", "bane_of_arthopods", "reinforced", "soulbound", "sharpness", "haste", "extratraitxu_evil_metalxu_withering", "beheading", "luck"]}, Modifiers: [{identifier: "stiff", color: -5789785, level: 1}, {identifier: "sharp", color: -5789785, level: 1}, {identifier: "creative", color: 0, level: 35}, {identifier: "smite", current: 120, color: 15258880, level: 5, max: 120, extraInfo: "119 / 120"}, {identifier: "bane_of_arthopods", current: 120, color: 6404681, level: 5, max: 120, extraInfo: "119 / 120"}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "soulbound", color: 16120748}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "xu_withering", color: -131160, level: 1}, {identifier: "extratraitxu_evil_metalxu_withering", color: -131160}, {identifier: "beheading", color: 1070923, level: 10}, {identifier: "luck", current: 360, color: 2970082, level: 3, max: 360, modifierUsed: 1 as byte, extraInfo: "359 / 360"}], Traits: ["stiff", "sharp", "smite", "bane_of_arthopods", "reinforced", "xu_withering", "luck"]}), [[<rockhounding_chemistry:alloy_parts:81>, null, null],[<rockhounding_chemistry:alloy_parts:82>, <rockhounding_chemistry:misc_items:25>, null], [<rockhounding_chemistry:alloy_parts:82>, null, <rockhounding_chemistry:misc_items:25>]]);
recipes.addShaped(<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 561, HarvestLevel: 4, Attack: 7.0 as float}, Unbreakable: 1 as byte, RepairCost: 0, display: {Name: "§8碳化硅剑"}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 0, Durability: 561, HarvestLevel: 4, Attack: 17.543472 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 20, Materials: ["lead", "dark_steel", "dark_steel"], Modifiers: ["creative", "reinforced", "extratraitbonefractured", "sharpness", "haste", "smite", "soulbound"]}, Modifiers: [{identifier: "poisonous", color: -11712152, level: 1}, {identifier: "heavy", color: -11712152, level: 1}, {identifier: "enderference", color: -9671572, level: 1}, {identifier: "dense", color: -9671572, level: 1}, {identifier: "creative", color: 0, level: 18}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "fractured", color: -1186113, level: 1}, {identifier: "extratraitbonefractured", color: -1186113}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "smite", current: 120, color: 15258880, level: 5, max: 120, extraInfo: "119 / 120"}, {identifier: "soulbound", color: 16120748}], Traits: ["poisonous", "heavy", "enderference", "dense", "reinforced", "fractured", "smite"]}), [[null, null, <rockhounding_chemistry:alloy_items_tech:31>],[null, <rockhounding_chemistry:alloy_items_tech:31>, null], [<rockhounding_chemistry:alloy_items_tech:43>, null, null]]);
recipes.addShaped(<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 8.0 as float, FreeModifiers: 3, Durability: 2861, HarvestLevel: 4, Attack: 7.5 as float}, Unbreakable: 1 as byte, RepairCost: 0, display: {Name: "§7氮化硅剑"}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 8.0 as float, FreeModifiers: 0, Durability: 2861, HarvestLevel: 4, Attack: 16.321201 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 15, Materials: ["knightmetal", "knightmetal", "knightmetal"], Modifiers: ["creative", "reinforced", "extratraitsilverholy", "sharpness", "haste", "soulbound"]}, Modifiers: [{identifier: "twilit", color: -3873106, level: 1}, {identifier: "stalwart", color: -3873106, level: 1}, {identifier: "creative", color: 0, level: 14}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "holy", color: -3019530, level: 1}, {identifier: "extratraitsilverholy", color: -3019530}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "soulbound", color: 16120748}], Traits: ["twilit", "stalwart", "reinforced", "holy"]}), [[null, null, <rockhounding_chemistry:alloy_items_tech:28>],[null, <rockhounding_chemistry:alloy_items_tech:28>, null], [<rockhounding_chemistry:alloy_items_deco:10>, null, null]]);
recipes.addShaped(<tconstruct:rapier>.withTag({EnchantEffect: 1 as byte, StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 3, Durability: 559, HarvestLevel: 4, Attack: 8.72 as float}, Unbreakable: 1 as byte, RepairCost: 0, display: {Name: "§5晶体"}, Stats: {AttackSpeedMultiplier: 2.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 0, Durability: 559, HarvestLevel: 4, Attack: 17.030725 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 15, Materials: ["lead", "manyullyn", "electrum"], Modifiers: ["extratraitendstoneenderference", "reinforced", "creative", "sharpness", "haste", "soulbound"]}, Modifiers: [{identifier: "poisonous", color: -11712152, level: 1}, {identifier: "heavy", color: -11712152, level: 1}, {identifier: "insatiable", color: -6202120, level: 1}, {identifier: "shocking", charge: 100.85975 as float, color: -1516727, level: 1, x: -525.9423794009892, y: 82.0, z: 265.69999998807907}, {identifier: "enderference", color: -2041712, level: 1}, {identifier: "extratraitendstoneenderference", color: -2041712}, {identifier: "reinforced", color: 5254787, level: 5}, {identifier: "creative", color: 0, level: 13}, {identifier: "sharpness", current: 360, color: 16774902, level: 5, max: 360, extraInfo: "359 / 360"}, {identifier: "haste", current: 250, color: 9502720, level: 5, max: 250, extraInfo: "249 / 250"}, {identifier: "soulbound", color: 16120748}], Traits: ["poisonous", "heavy", "insatiable", "shocking", "enderference", "reinforced"]}), [[<rockhounding_chemistry:alloy_items_gems:1>, null, null],[null, <rockhounding_chemistry:alloy_items_gems:1>, null], [null, null, <rockhounding_chemistry:alloy_items_deco:28>]]);
