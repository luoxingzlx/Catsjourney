import mods.bloodmagic.AlchemyArray;


/*
//mods.bloodmagic.TartaricForge.removeRecipe(IItemStack[] inputs);
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:ghast_tear>, <minecraft:feather>, <minecraft:feather>]);
//mods.bloodmagic.TartaricForge.addRecipe(IItemStack output, IItemStack[] inputs, double minSouls, double soulDrain);
mods.bloodmagic.TartaricForge.addRecipe(<minecraft:diamond>,[<minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>, <minecraft:dirt>], 10,10);
//mods.bloodmagic.AlchemyArray.addRecipe(IItemStack output, IItemStack catalyst, IItemStack input, @Optional string textureLocation);
mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:diamond>, <minecraft:grass>, <minecraft:stick>, "bloodmagic:textures/models/AlchemyArrays/LightSigil.png");
mods.bloodmagic.AlchemyArray.addRecipe(<minecraft:diamond>, <minecraft:grass>, <minecraft:stick>);
//mods.bloodmagic.AlchemyArray.removeRecipe(IItemStack input, IItemStack catalyst);
mods.bloodmagic.AlchemyArray.removeRecipe(<minecraft:redstone>, <bloodmagic:slate:3>);
*/
//##钻石制品修复
mods.bloodmagic.TartaricForge.removeRecipe([<minecraft:diamond_chestplate>, <bloodmagic:soul_gem:1>, <minecraft:obsidian>, <minecraft:iron_block>]);
mods.bloodmagic.TartaricForge.addRecipe(<bloodmagic:sentient_armour_gem>,[<railcraft:armor_chestplate_steel>, <bloodmagic:soul_gem:1>, <minecraft:obsidian>, <minecraft:iron_block>], 240,150);

mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_shovel>, <bloodmagic:component:8>, <harderores:diamondstud_shovel>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_sword>, <bloodmagic:component:8>, <evilcraft:vein_sword>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_pickaxe>, <bloodmagic:component:8>, <evilcraft:vengeance_pickaxe>);
mods.bloodmagic.AlchemyArray.addRecipe(<bloodmagic:bound_axe>, <bloodmagic:component:8>, <evilcraft:mace_of_destruction>);
