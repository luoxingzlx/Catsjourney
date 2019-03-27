import crafttweaker.item.IItemStack as IItemStack;
import mods.armoreablemobs.ArmorHandler;
import mods.armoreablemobs.ArmorEntity;
import mods.armoreablemobs.ArmorSlot;
import mods.armoreablemobs.ArmorGroup;
#modloaded armoreablemobs
print("--- loading ArmoreableMobs.zs ---");

# *======= Variables =======*

	var twilightGroup = ArmorHandler.createArmorGroup("twilight", 0.4);
	var magicalGroup = ArmorHandler.createArmorGroup("magical", 0.4);
	var vanillaGroup = ArmorHandler.createArmorGroup("vanilla", 0.4);
	var energyGroup = ArmorHandler.createArmorGroup("energy", 0.2);
	var armorplusGroup = ArmorHandler.createArmorGroup("armorplus", 0.2);
	var enderioGroup = ArmorHandler.createArmorGroup("enderio", 0.2);
	var extrautils2Group = ArmorHandler.createArmorGroup("extrautils2", 0.1);
	var yoyosGroup = ArmorHandler.createArmorGroup("yoyos", 0.1);
	var inventorypetsGroup = ArmorHandler.createArmorGroup("inventorypets", 0.1);
	var tconstructGroup = ArmorHandler.createArmorGroup("tconstruct", 0.1);

# *======= Entities =======*

	var zombiePigman = ArmorHandler.createArmorEntity("minecraft:zombie_pigman").withNBTCheck("Health", 50.0, "GREATER");
	var zombie = ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("Health", 100.0, "LESS");
	var husk = ArmorHandler.createArmorEntity("minecraft:husk").withNBTCheck("Health", 40.0, "GREATER");
	var zombieStrong = ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("Health", 100.0, "GREATER");
	var zombieBoss = ArmorHandler.createArmorEntity("minecraft:zombie").withNBTCheck("Health", 200.0, "GREATER");
	var skeleton = ArmorHandler.createArmorEntity("minecraft:skeleton");
	var skeletonBoss = ArmorHandler.createArmorEntity("minecraft:skeleton").withNBTCheck("Health", 150.0, "GREATER");
	var stray = ArmorHandler.createArmorEntity("minecraft:stray").withNBTCheck("Health", 40.0, "GREATER");
	var strayBoss = ArmorHandler.createArmorEntity("minecraft:stray").withNBTCheck("Health", 200.0, "GREATER");
	var zombieVillager = ArmorHandler.createArmorEntity("minecraft:zombie_villager");
	var witherSkeleton = ArmorHandler.createArmorEntity("minecraft:wither_skeleton").withNBTCheck("Health", 35.0, "GREATER");
	var knight = ArmorHandler.createArmorEntity("emberroot:knight_fallen").withNBTCheck("Health", 50.0, "GREATER");
	
# *======= Weaponry =======*
	
	val weapons = [
	<minecraft:diamond_sword>,
	<botania:elementiumsword>,
	<botania:manasteelsword>,
	<botania:terrasword>,
	<enderio:item_dark_steel_sword>,
	<enderio:item_end_steel_sword>,
	<psi:psimetal_sword>.withTag({}),
	<extrautils2:luxsaber:5>.withTag({Energy: 40000}),
	<extrautils2:luxsaber:6>.withTag({Energy: 40000}),
	<twilightforest:ironwood_sword>.withTag({ench: [{lvl: 1 as short, id: 19 as short}]}),
	<twilightforest:fiery_sword>.withTag({ench: [{lvl: 2 as short, id: 20 as short}]}),
	<twilightforest:steeleaf_sword>.withTag({ench: [{lvl: 2 as short, id: 21 as short}]}),
	<twilightforest:knightmetal_sword>,
	<twilightforest:giant_sword>,
	<twilightforest:ice_sword>,
	<twilightforest:glass_sword>,
	<bloodmagic:sentient_sword>.withTag({}),
	<extrautils2:lawsword>,
	<extrautils2:fireaxe>,
	<twilightforest:minotaur_axe>,
	<twilightforest:knightmetal_axe>,
	<inventorypets:solstice_sword>.withTag({ench: [{lvl: 4 as short, id: 34 as short}, {lvl: 2 as short, id: 16 as short}, {lvl: 2 as short, id: 17 as short}]}),
	<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 3, Durability: 719, HarvestLevel: 4, Attack: 9.22 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 3, Durability: 719, HarvestLevel: 4, Attack: 9.22 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["manyullyn", "manyullyn", "manyullyn"], Modifiers: []}, Modifiers: [{identifier: "coldblooded", color: -6202120, level: 1}, {identifier: "insatiable", color: -6202120, level: 1}], Traits: ["coldblooded", "insatiable"]}),
	<tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 3, Durability: 1370, HarvestLevel: 4, Attack: 14.3359995 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.02 as float, FreeModifiers: 3, Durability: 1370, HarvestLevel: 4, Attack: 14.3359995 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["manyullyn", "manyullyn", "manyullyn", "manyullyn"], Modifiers: ["beheading_cleaver"]}, Modifiers: [{identifier: "coldblooded", color: -6202120, level: 1}, {identifier: "insatiable", color: -6202120, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}], Traits: ["coldblooded", "insatiable"]}),
	<tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 3, Durability: 2958, HarvestLevel: 1, Attack: 5.6 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 3, Durability: 2958, HarvestLevel: 1, Attack: 5.6 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {Materials: ["pulsating_iron", "pulsating_iron", "pulsating_iron", "pulsating_iron"], Modifiers: ["beheading_cleaver"]}, Modifiers: [{identifier: "enderport", color: -13856700, level: 5, "enderport-2": 1 as byte, "enderport-3": 1 as byte, "enderport-0": 1 as byte}, {identifier: "beheading_cleaver", color: 1070923, level: 2}], Traits: ["enderport-2", "enderport-0", "enderport-3"]}),
	<tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.51 as float, FreeModifiers: 3, Durability: 6, HarvestLevel: 0, Attack: 0.05 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 1.01 as float, FreeModifiers: 4, Durability: 506, HarvestLevel: 0, Attack: 1.05 as float}, Special: {Categories: ["tool", "weapon"]}, TinkerData: {UsedModifiers: 3, Materials: ["paper", "paper"], Modifiers: ["toolleveling", "knockback", "creative", "diamond"]}, Modifiers: [{identifier: "writable", color: -1, level: 2, writable2: 1 as byte, writable1: 1 as byte}, {identifier: "toolleveling", color: 16777215, level: 1, xp: 5, bonus_modifiers: 0}, {identifier: "knockback", current: 20, color: 10461087, level: 2, max: 20, extraInfo: "19 / 20"}, {identifier: "creative", color: 0, level: 3}, {identifier: "diamond", color: 9237730}], Traits: ["writable1", "writable2", "toolleveling", "knockback"]}),
	<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 2.1 as float, FreeModifiers: 3, Durability: 481, HarvestLevel: 5, Attack: 8.0 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 2.1 as float, FreeModifiers: 2, Durability: 481, HarvestLevel: 5, Attack: 8.0 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["magmaslime", "magmaslime", "magmaslime"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "flammable", color: -27123, level: 1}, {identifier: "superheat", color: -27123, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["flammable", "superheat", "toolleveling"]}),
	<tconstruct:hammer>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.24 as float, FreeModifiers: 3, Durability: 1750, HarvestLevel: 1, Attack: 1.8 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 11.00701 as float, FreeModifiers: 3, Durability: 1750, HarvestLevel: 1, Attack: 1.8 as float}, Special: {Categories: ["tool", "harvest", "weapon"]}, TinkerData: {UsedModifiers: 1, Materials: ["slime", "slime", "slime", "slime"], Modifiers: ["toolleveling", "creative", "haste"]}, Modifiers: [{identifier: "slimey_green", color: -8206221, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "creative", color: 0, level: 2}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}], Traits: ["slimey_green", "toolleveling"]}),
	<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.5 as float, FreeModifiers: 3, Durability: 168, HarvestLevel: 3, Attack: 6.7 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 12.073282 as float, FreeModifiers: 2, Durability: 168, HarvestLevel: 3, Attack: 6.7 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["prismarine", "prismarine", "prismarine"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "aquadynamic", color: -8462660, level: 1}, {identifier: "jagged", color: -8462660, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["aquadynamic", "jagged", "toolleveling"]}),
	<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.6 as float, FreeModifiers: 3, Durability: 816, HarvestLevel: 3, Attack: 6.9 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 11.311658 as float, FreeModifiers: 2, Durability: 816, HarvestLevel: 3, Attack: 6.9 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["ruby", "ruby", "ruby"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "bloodymary", color: -43691, level: 1}, {identifier: "sharp", color: -43691, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["bloodymary", "sharp", "toolleveling"]}),
	<tconstruct:hatchet>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.8 as float, FreeModifiers: 3, Durability: 988, HarvestLevel: 6, Attack: 5.6 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 12.327148 as float, FreeModifiers: 2, Durability: 988, HarvestLevel: 6, Attack: 5.6 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["knightslime", "knightslime", "knightslime"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "unnatural", color: -946192, level: 1}, {identifier: "crumbling", color: -946192, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["unnatural", "crumbling", "toolleveling"]}),
	<tconstruct:kama>.withTag({ench: [{lvl: 1 as short, id: 21 as short}, {lvl: 1 as short, id: 35 as short}], StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.5 as float, FreeModifiers: 3, Durability: 125, HarvestLevel: 7, Attack: 11.1 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 0.5 as float, FreeModifiers: 3, Durability: 125, HarvestLevel: 7, Attack: 11.1 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["xu_demonic_metal", "xu_demonic_metal", "xu_demonic_metal"], Modifiers: ["toolleveling", "luck", "creative"]}, Modifiers: [{identifier: "xu_whispering", color: -6079744, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "luck", current: 66, color: 2970082, level: 2, max: 180, modifierUsed: 1 as byte, extraInfo: "65 / 180"}, {identifier: "creative", color: 0, level: 2}], Traits: ["xu_whispering", "toolleveling", "luck"]}),
	<tconstruct:mattock>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 7, MiningSpeed: 16.53 as float, FreeModifiers: 3, HarvestLevelShovel: 7, Durability: 3256, HarvestLevel: 7, Attack: 14.62 as float}, Stats: {AttackSpeedMultiplier: 1.0 as float, HarvestLevelAxe: 7, MiningSpeed: 21.12457 as float, FreeModifiers: 2, HarvestLevelShovel: 7, Durability: 3256, HarvestLevel: 7, Attack: 14.62 as float}, Special: {Categories: ["aoe", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["ma.superium", "ma.superium", "ma.superium"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "prosperous", color: -16744485, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["prosperous", "toolleveling"]}),
	<tconstruct:kama>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.35 as float, FreeModifiers: 3, Durability: 341, HarvestLevel: 2, Attack: 4.6 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 12.792588 as float, FreeModifiers: 2, Durability: 341, HarvestLevel: 2, Attack: 4.6 as float}, Special: {Categories: ["aoe", "weapon", "harvest", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["ma.soulium", "ma.soulium", "ma.soulium"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "chunky", color: -11124169, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["chunky", "toolleveling"]}),
	<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.2 as float, FreeModifiers: 3, Durability: 726, HarvestLevel: 5, Attack: 5.5 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 6.2 as float, FreeModifiers: 2, Durability: 726, HarvestLevel: 5, Attack: 5.5 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["pigiron", "pigiron", "pigiron"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "tasty", color: -1073509, level: 1}, {identifier: "baconlicious", color: -1073509, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["tasty", "baconlicious", "toolleveling"]}),
	<tconstruct:frypan>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 700, HarvestLevel: 4, Attack: 6.2 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 7.0 as float, FreeModifiers: 1, Durability: 700, HarvestLevel: 4, Attack: 6.2 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["fluixcrystal_plustic", "fluixcrystal_plustic"], Modifiers: ["toolleveling", "haste"]}, Modifiers: [{identifier: "portly", color: -2009268071, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}], Traits: ["portly", "toolleveling"]}),
	<tconstruct:rapier>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 7.0 as float, FreeModifiers: 3, Durability: 394, HarvestLevel: 7, Attack: 3.5 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 7.0 as float, FreeModifiers: 1, Durability: 394, HarvestLevel: 7, Attack: 3.5 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["xu_enchanted_metal", "xu_enchanted_metal", "xu_enchanted_metal"], Modifiers: ["toolleveling", "haste"]}, Modifiers: [{identifier: "xu_xp_boost", color: -4197792, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}], Traits: ["xu_xp_boost", "toolleveling"]}),
	<tconstruct:battlesign>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 9.0 as float, FreeModifiers: 3, Durability: 405, HarvestLevel: 6, Attack: 10.0 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 9.0 as float, FreeModifiers: 1, Durability: 405, HarvestLevel: 6, Attack: 10.0 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["refinedglowstone", "refinedglowstone"], Modifiers: ["toolleveling", "haste"]}, Modifiers: [{identifier: "sassy", color: -171, level: 1}, {identifier: "illuminati", color: -171, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}], Traits: ["sassy", "illuminati", "toolleveling"]}),
	<tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 4.6 as float, FreeModifiers: 3, Durability: 1720, HarvestLevel: 4, Attack: 10.41 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 4.6 as float, FreeModifiers: 2, Durability: 1720, HarvestLevel: 4, Attack: 10.41 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["amber", "amber", "amber", "amber"], Modifiers: ["beheading_cleaver", "toolleveling", "creative", "haste"]}, Modifiers: [{identifier: "shocking", charge: 10.0 as float, color: -22016, level: 1, x: 100.0126747544041, y: 6.49390748022948, z: 85.70858240049272}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "creative", color: 0, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}], Traits: ["shocking", "toolleveling"]}),
	<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 5.1 as float, FreeModifiers: 3, Durability: 106, HarvestLevel: 2, Attack: 3.3 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 5.1 as float, FreeModifiers: 5, Durability: 106, HarvestLevel: 2, Attack: 3.3 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["livingwood_plustic", "livingwood_plustic", "livingwood_plustic"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{botanical2: 1 as byte, identifier: "botanical", botanical1: 1 as byte, color: -16733696, level: 3}, {identifier: "ecological", color: -16733696, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["botanical1", "ecological", "botanical2", "toolleveling"]}),
	<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 3, Durability: 2289, HarvestLevel: 4, Attack: 10.5 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 6.0 as float, FreeModifiers: 2, Durability: 2289, HarvestLevel: 4, Attack: 10.5 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["amethyst", "amethyst", "amethyst"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "apocalypse", color: -43521, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["apocalypse", "toolleveling"]}),
	<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 3.0 as float, FreeModifiers: 3, Durability: 496, HarvestLevel: 3, Attack: 7.5 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 3.0 as float, FreeModifiers: 2, Durability: 496, HarvestLevel: 3, Attack: 7.5 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["tanzanite", "tanzanite", "tanzanite"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "freezing", color: -43521, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["freezing", "toolleveling"]}),
	<tconstruct:longsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 3.23 as float, FreeModifiers: 3, Durability: 412, HarvestLevel: 5, Attack: 3.73 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 3.9719975 as float, FreeModifiers: 2, Durability: 518, HarvestLevel: 5, Attack: 4.2550097 as float}, Special: {Categories: ["weapon", "tool"], alienStatBonus: {identifier: "", color: 0, attack: 0.5249997 as float, durability: 106, speed: 0.742001 as float}, alienStatPool: {identifier: "", color: 16777215, attack: 1.334999 as float, durability: 269, speed: 1.8479984 as float}}, TinkerData: {UsedModifiers: 1, Materials: ["endstone", "endstone", "endstone"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "enderference", color: -2041712, level: 1}, {identifier: "alien", color: -2041712, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["enderference", "alien", "toolleveling"]}),
	<tconstruct:broadsword>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.8 as float, FreeModifiers: 3, Durability: 1020, HarvestLevel: 6, Attack: 6.5 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 6.8 as float, FreeModifiers: 2, Durability: 1020, HarvestLevel: 6, Attack: 6.5 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["alumite", "alumite", "alumite"], Modifiers: ["toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "global", color: -43691, level: 1}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["global", "toolleveling"]}),
	<tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 9.0 as float, FreeModifiers: 3, Durability: 4422, HarvestLevel: 11, Attack: 11.45 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 9.0 as float, FreeModifiers: 2, Durability: 4422, HarvestLevel: 11, Attack: 11.45 as float}, Special: {Categories: ["weapon", "tool"]}, TinkerData: {UsedModifiers: 1, Materials: ["terrasteel", "terrasteel", "terrasteel", "terrasteel"], Modifiers: ["beheading_cleaver", "toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "mana", color: -11141291, level: 1}, {identifier: "terrafirma", color: -11141291, level: 3, terrafirma2: 1 as byte, terrafirma1: 1 as byte}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["mana", "terrafirma1", "terrafirma2", "toolleveling"]}),
	<tconstruct:cleaver>.withTag({StatsOriginal: {AttackSpeedMultiplier: 1.0 as float, MiningSpeed: 6.0 as float, FreeModifiers: 3, Durability: 1294, HarvestLevel: 10, Attack: 10.54 as float}, Stats: {AttackSpeedMultiplier: 1.2 as float, MiningSpeed: 6.8259974 as float, FreeModifiers: 2, Durability: 1409, HarvestLevel: 10, Attack: 11.110009 as float}, Special: {Categories: ["weapon", "tool"], alienStatBonus: {identifier: "", color: 0, attack: 0.49999967 as float, durability: 101, speed: 0.7140009 as float}, alienStatPool: {identifier: "", color: 16777215, attack: 1.4549989 as float, durability: 265, speed: 1.707999 as float}}, TinkerData: {UsedModifiers: 1, Materials: ["iridium", "iridium", "iridium", "iridium"], Modifiers: ["beheading_cleaver", "toolleveling", "haste", "creative"]}, Modifiers: [{identifier: "dense", color: -5592406, level: 1}, {identifier: "alien", color: -5592406, level: 1}, {identifier: "beheading_cleaver", color: 1070923, level: 2}, {identifier: "toolleveling", color: 16777215, level: 1}, {identifier: "haste", current: 50, color: 9502720, level: 1, max: 50, extraInfo: "49 / 50"}, {identifier: "creative", color: 0, level: 1}], Traits: ["dense", "alien", "toolleveling"]})
	] as IItemStack[];
	
	for weapon in weapons {
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	energyGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	armorplusGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	extrautils2Group.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	inventorypetsGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	tconstructGroup.addArmor(ArmorHandler.createArmorSlot("mainhand", weapon, 20, 0.00001));
	}


# *======= offhand =======*

    val offhand = [
	<minecraft:bow>.withTag({ench: [{lvl: 3 as short, id: 34}, {lvl: 5 as short, id: 48}], RepairCost: 3}),
	<minecraft:bow>.withTag({ench: [{lvl: 3 as short, id: 34}, {lvl: 1 as short, id: 50}], RepairCost: 3}),
	<minecraft:bow>.withTag({ench: [{lvl: 3 as short, id: 34}, {lvl: 2 as short, id: 49}], RepairCost: 3}),
	<immersiveengineering:shield>,
	<extrabotany:manasteelshield>,
	<extrabotany:elementiumshield>,
	<extrabotany:terrasteelshield>,
	<minecraft:shield>.withTag({}),
	<minecraft:flint_and_steel>,
	<minecraft:tnt>,
	<minecraft:snowball>,
	<minecraft:ender_pearl>,
	<minecraft:lava_bucket>,
	<minecraft:bow>,
	<minecraft:boat>,
	<minecraft:enchanted_book>.withTag({StoredEnchantments: [{lvl: 1 as short, id: 71 as short}]}),
	<minecraft:splash_potion>.withTag({Potion: "minecraft:harming"}),
	<minecraft:splash_potion>.withTag({Potion: "minecraft:weakness"}),
	<minecraft:splash_potion>.withTag({Potion: "minecraft:slowness"}),
	<minecraft:splash_potion>.withTag({Potion: "minecraft:poison"})
	] as IItemStack[];

	for off in offhand {
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("offhand", off, 20, 0.00001));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("offhand", off, 20, 0.00001));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("offhand", off, 20, 0.00001));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("offhand", off, 20, 0.00001));
	tconstructGroup.addArmor(ArmorHandler.createArmorSlot("offhand", off, 20, 0.00001));
	}


# *======= Twilight Armor =======*

	twilightGroup.addArmor(ArmorHandler.createArmorSlot("head", <twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("chest", <twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("legs", <twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("feet", <twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 2 as short}]}), 10, 0.005));

	twilightGroup.addArmor(ArmorHandler.createArmorSlot("head", <twilightforest:knightmetal_helmet>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("chest", <twilightforest:knightmetal_chestplate>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("legs", <twilightforest:knightmetal_leggings>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("feet", <twilightforest:knightmetal_boots>, 10, 0.005));

	twilightGroup.addArmor(ArmorHandler.createArmorSlot("head", <twilightforest:steeleaf_helmet>.withTag({ench: [{lvl: 2 as short, id: 4 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("chest", <twilightforest:steeleaf_chestplate>.withTag({ench: [{lvl: 2 as short, id: 3 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("legs", <twilightforest:steeleaf_leggings>.withTag({ench: [{lvl: 2 as short, id: 1 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("feet", <twilightforest:steeleaf_boots>.withTag({ench: [{lvl: 2 as short, id: 2 as short}]}), 10, 0.005));

	twilightGroup.addArmor(ArmorHandler.createArmorSlot("head", <twilightforest:fiery_helmet>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("chest", <twilightforest:fiery_chestplate>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("legs", <twilightforest:fiery_leggings>, 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("feet", <twilightforest:fiery_boots>, 10, 0.005));
	
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("head", <twilightforest:ironwood_helmet>.withTag({ench: [{lvl: 1 as short, id: 6 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("chest", <twilightforest:ironwood_chestplate>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("legs", <twilightforest:ironwood_leggings>.withTag({ench: [{lvl: 1 as short, id: 0 as short}]}), 10, 0.005));
	twilightGroup.addArmor(ArmorHandler.createArmorSlot("feet", <twilightforest:ironwood_boots>.withTag({ench: [{lvl: 1 as short, id: 2 as short}]}), 10, 0.005));
	
	
	twilightGroup.addEntity(zombie);
	twilightGroup.addEntity(zombieStrong);
	twilightGroup.addEntity(zombieBoss);
	twilightGroup.addEntity(knight);
	twilightGroup.addEntity(husk);
	twilightGroup.addEntity(witherSkeleton);
	twilightGroup.addEntity(zombiePigman);
	twilightGroup.addEntity(zombieVillager);
	twilightGroup.addEntity(skeleton);
	twilightGroup.addEntity(skeletonBoss);
	twilightGroup.addEntity(stray);
	twilightGroup.addEntity(strayBoss);

# *======= Magical Armor =======*

	magicalGroup.addArmor(ArmorHandler.createArmorSlot("head", <psi:psimetal_exosuit_helmet>, 10, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("chest", <psi:psimetal_exosuit_chestplate>, 10, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("legs", <psi:psimetal_exosuit_leggings>, 10, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("feet", <psi:psimetal_exosuit_boots>, 10, 0.005));
		
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("head", <botania:manasteelhelm>, 20, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("chest", <botania:manasteelchest>, 20, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("legs", <botania:manasteellegs>, 20, 0.005));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("feet", <botania:manasteelboots>, 20, 0.005));

	magicalGroup.addArmor(ArmorHandler.createArmorSlot("head", <botania:elementiumhelm>, 15, 0.003));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("chest", <botania:elementiumchest>, 15, 0.003));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("legs", <botania:elementiumlegs>, 15, 0.003));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("feet", <botania:elementiumboots>, 15, 0.003));

	magicalGroup.addArmor(ArmorHandler.createArmorSlot("head", <botania:terrasteelhelm>, 10, 0.0001));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("chest", <botania:terrasteelchest>, 10, 0.0001));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("legs", <botania:terrasteellegs>, 10, 0.0001));
	magicalGroup.addArmor(ArmorHandler.createArmorSlot("feet", <botania:terrasteelboots>, 10, 0.0001));
	
	magicalGroup.addEntity(zombie);
	magicalGroup.addEntity(zombieStrong);
	magicalGroup.addEntity(zombieBoss);
	magicalGroup.addEntity(knight);
	magicalGroup.addEntity(husk);
	magicalGroup.addEntity(witherSkeleton);
	magicalGroup.addEntity(zombiePigman);
	magicalGroup.addEntity(zombieVillager);
	magicalGroup.addEntity(skeleton);
	magicalGroup.addEntity(skeletonBoss);
	magicalGroup.addEntity(stray);
	magicalGroup.addEntity(strayBoss);
	
# *======= Vanilla Armor =======*

	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:iron_helmet>, 15, 0.02));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:iron_chestplate>, 15, 0.02));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:iron_leggings>, 15, 0.02));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:iron_boots>, 15, 0.02));

	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("head", <minecraft:diamond_helmet>, 10, 0.005));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("chest", <minecraft:diamond_chestplate>, 10, 0.005));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("legs", <minecraft:diamond_leggings>, 10, 0.005));
	vanillaGroup.addArmor(ArmorHandler.createArmorSlot("feet", <minecraft:diamond_boots>, 10, 0.005));
	
	vanillaGroup.addEntity(zombie);
	vanillaGroup.addEntity(zombieStrong);
	vanillaGroup.addEntity(zombieBoss);
	vanillaGroup.addEntity(knight);
	vanillaGroup.addEntity(husk);
	vanillaGroup.addEntity(witherSkeleton);
	vanillaGroup.addEntity(zombiePigman);
	vanillaGroup.addEntity(zombieVillager);
	vanillaGroup.addEntity(skeleton);
	vanillaGroup.addEntity(skeletonBoss);
	vanillaGroup.addEntity(stray);
	vanillaGroup.addEntity(strayBoss);
	
# *======= Energy Armor =======*
		
	energyGroup.addArmor(ArmorHandler.createArmorSlot("head", <immersiveengineering:faraday_suit_head>, 10, 0.005));
	energyGroup.addArmor(ArmorHandler.createArmorSlot("chest", <immersiveengineering:faraday_suit_chest>, 10, 0.005));
	energyGroup.addArmor(ArmorHandler.createArmorSlot("legs", <immersiveengineering:faraday_suit_legs>, 10, 0.005));
	energyGroup.addArmor(ArmorHandler.createArmorSlot("feet", <immersiveengineering:faraday_suit_feet>, 10, 0.005));

	
	energyGroup.addEntity(zombie);
	energyGroup.addEntity(zombieStrong);
	energyGroup.addEntity(zombieBoss);
	energyGroup.addEntity(knight);
	energyGroup.addEntity(husk);
	energyGroup.addEntity(witherSkeleton);
	energyGroup.addEntity(zombiePigman);
	energyGroup.addEntity(zombieVillager);
	energyGroup.addEntity(skeleton);
	energyGroup.addEntity(skeletonBoss);
	energyGroup.addEntity(stray);
	energyGroup.addEntity(strayBoss);
	
	
# *======= Enderio Armor =======*
	
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("head", <enderio:item_dark_steel_helmet>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("chest", <enderio:item_dark_steel_chestplate>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("legs", <enderio:item_dark_steel_leggings>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("feet", <enderio:item_dark_steel_boots>, 10, 0.005));
	
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("head", <enderio:item_end_steel_helmet>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("chest", <enderio:item_end_steel_chestplate>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("legs", <enderio:item_end_steel_leggings>, 10, 0.005));
	enderioGroup.addArmor(ArmorHandler.createArmorSlot("feet", <enderio:item_end_steel_boots>, 10, 0.005));

	enderioGroup.addEntity(zombie);
	enderioGroup.addEntity(zombieStrong);
	enderioGroup.addEntity(zombieBoss);
	enderioGroup.addEntity(knight);
	enderioGroup.addEntity(husk);
	enderioGroup.addEntity(witherSkeleton);
	enderioGroup.addEntity(zombiePigman);
	enderioGroup.addEntity(zombieVillager);
	enderioGroup.addEntity(skeleton);
	enderioGroup.addEntity(skeletonBoss);
	enderioGroup.addEntity(stray);
	enderioGroup.addEntity(strayBoss);
	
		print("--- ArmoreableMobs.zs initialized ---");