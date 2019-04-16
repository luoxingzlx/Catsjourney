import crafttweaker.oredict.IOreDictEntry;

##齿轮##

//#crossroads青铜齿轮矿辞移除
<ore:gearBronze>.remove(<crossroads:gear_bronze>);

//#crossroads轮轴矿辞移除
<ore:stickIron>.remove(<crossroads:axle>);

//#移除crossroads齿轮合成
recipes.remove(<appliedenergistics2:facade>);
recipes.remove(<crossroads:gear_lead>);
recipes.remove(<crossroads:toggle_gear_tin>);
recipes.remove(<crossroads:toggle_gear_nickel>);
recipes.remove(<crossroads:toggle_gear_platinum>);
recipes.remove(<crossroads:gear_tin>);
recipes.remove(<crossroads:gear_gold>);
recipes.remove(<crossroads:gear_electrum>);
recipes.remove(<crossroads:toggle_gear_copper>);
recipes.remove(<crossroads:toggle_gear_invar>);
recipes.remove(<crossroads:toggle_gear_gold>);
recipes.remove(<crossroads:large_gear_invar>);
recipes.remove(<crossroads:toggle_gear_lead>);
recipes.remove(<crossroads:gear_copper>);
recipes.remove(<crossroads:large_gear_copper>);
recipes.remove(<crossroads:large_gear_gold>);
recipes.remove(<crossroads:gear_platinum>);
recipes.remove(<crossroads:toggle_gear_electrum>);
recipes.remove(<crossroads:large_gear_lead>);
recipes.remove(<crossroads:large_gear_tin>);
recipes.remove(<crossroads:gear_invar>);
recipes.remove(<crossroads:large_gear_electrum>);
recipes.remove(<crossroads:gear_silver>);
recipes.remove(<crossroads:toggle_gear_iron>);
recipes.remove(<crossroads:large_gear_silver>);
recipes.remove(<crossroads:large_gear_iron>);
recipes.remove(<crossroads:gear_nickel>);
recipes.remove(<crossroads:gear_iron>);
recipes.remove(<crossroads:large_gear_platinum>);
recipes.remove(<crossroads:toggle_gear_silver>);
recipes.remove(<crossroads:large_gear_nickel>);

//#木石齿轮合成统一
recipes.addShaped(<enderio:item_material:9>, [[<ore:stickWood>, <ore:stickWood>, <ore:stickWood>],[<ore:stickWood>, <ore:plateWood>, <ore:stickWood>], [<ore:stickWood>, <ore:stickWood>, <ore:stickWood>]]);
recipes.addShaped(<enderio:item_material:10>, [[<ore:rodStone>, <ore:rodStone>, <ore:rodStone>],[<ore:rodStone>, <ore:gearWood>, <ore:rodStone>], [<ore:rodStone>, <ore:rodStone>, <ore:rodStone>]]);

//#移除所有齿轮的工作台合成
mods.unidict.removalByKind.get("Crafting").remove("gear");

//#顽固的齿轮合成
recipes.removeByRecipeName("moreplates:appliedenergistics2/certus_quartz_gear");
recipes.removeByRecipeName("moreplates:enderio/redstone_alloy_gear");
recipes.removeByRecipeName("moreplates:enderio/crystalline_pink_slime_gear");
recipes.removeByRecipeName("moreplates:tconstruct/knightslime_gear");


##粒##

//#粒
recipes.removeByRecipeName("extendedcrafting:diamond_nugget_to");
recipes.removeByRecipeName("grimoireofgaia:diamond");
recipes.removeByRecipeName("inventorypets:diamond");
recipes.removeByRecipeName("extendedcrafting:emerald_nugget_to");
recipes.removeByRecipeName("grimoireofgaia:emerald");


##板##

//#移除所有板的工作台合成
mods.unidict.removalByKind.get("Crafting").remove("plate");

//#primalcore板合成删除
furnace.remove(<primal:obsidian_plate>);
furnace.remove(<primal:diamond_plate>);

//#移除moreplates锤子合成
recipes.remove(<moreplates:hammer>);

//#顽固的板合成
recipes.removeByRecipeName("moreplates:tconstruct/knightslime_plate");
recipes.removeByRecipeName("moreplates:enderio/redstone_alloy_plate");
recipes.removeByRecipeName("moreplates:enderio/crystalline_pink_slime_plate");
recipes.removeByRecipeName("moreplates:appliedenergistics2/certus_quartz_plate");
recipes.removeByRecipeName("academy:14c7b7b3-b0ed-403b-88fe-26e01e91fe61");
recipes.removeByRecipeName("");


##杆##

//#移除所有杆的工作台合成
mods.unidict.removalByKind.get("Crafting").remove("rod");
mods.unidict.removalByKind.get("Crafting").remove("stick");


##锭##

//#移除所有锭的熔炉合成
mods.unidict.removalByKind.get("Furnace").remove("ingot");


##粉##

//#修复焦黑石英和石英粉合成


##块##

//#木炭块统一
recipes.remove(<chisel:block_charcoal2>);

//#高级火箭硅锭NC硅矿辞移除
<ore:itemSilicon>.remove(<libvulpes:productingot:3>);
<ore:itemSilicon>.remove(<nuclearcraft:gem:6>);

//#enderio齿轮添加IE冲压机合成
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:11>, <ore:dustBedrock>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:12>, <ore:ingotEnergeticAlloy>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:13>, <ore:ingotVibrantAlloy>, <immersiveengineering:mold:1>, 2400, 4);
mods.immersiveengineering.MetalPress.addRecipe(<enderio:item_material:73>, <ore:ingotDarkSteel>, <immersiveengineering:mold:1>, 2400, 4);

//#部分板IE冲压机合成修复
mods.immersiveengineering.MetalPress.removeRecipe(<techreborn:plates:37>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productplate>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productplate:1>);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:5>, <ore:dustDiamond>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:6>, <ore:dustEmerald>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:4>, <minecraft:redstone>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:10>, <ore:dustLazurite>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:9>, <ore:dustObsidian>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:8>, <ore:dustCoal>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:2>, <techreborn:part:34>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:15>, <ore:dustYellowGarnet>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:12>, <ore:dustSapphire>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:13>, <ore:dustPeridot>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:14>, <ore:dustRedGarnet>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<techreborn:plates:11>, <ore:dustRuby>, <immersiveengineering:mold>, 2400, 1);
mods.immersiveengineering.MetalPress.addRecipe(<rockhounding_chemistry:alloy_parts:61>, <ore:ingotShibuichi>, <immersiveengineering:mold>, 2400, 1);

//#AR棒IE冲压机移除
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productrod:10>);
mods.immersiveengineering.MetalPress.removeRecipe(<libvulpes:productrod:7>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod>);
mods.immersiveengineering.MetalPress.removeRecipe(<advancedrocketry:productrod:1>);

//#将所有木板合成更改为TR木板合成
<ore:plankWood>.add(<techreborn:plates:3>);

<ore:plankWood>.remove(<cuisine:planks>);
<ore:plankWood>.remove(<integrateddynamics:menril_planks>);
<ore:plankWood>.remove(<biomesoplenty:planks_0>);
<ore:plankWood>.remove(<primal:planks>);
<ore:plankWood>.remove(<minecraft:planks>);
<ore:plankWood>.remove(<immersiveengineering:treated_wood>);
<ore:plankWood>.remove(<techreborn:rubber_planks>);
<ore:plankWood>.remove(<twilightforest:tower_wood>);
<ore:plankWood>.remove(<chisel:planks-spruce>);
<ore:plankWood>.remove(<evilcraft:undead_plank>);
<ore:plankWood>.remove(<chisel:planks-dark-oak>);
<ore:plankWood>.remove(<chisel:planks-oak>);
<ore:plankWood>.remove(<fp:planks>);
<ore:plankWood>.remove(<naturesaura:ancient_planks>);
<ore:plankWood>.remove(<advancedrocketry:planks>);
<ore:plankWood>.remove(<chisel:planks-birch>);
<ore:plankWood>.remove(<chisel:planks-acacia>);
<ore:plankWood>.remove(<chisel:planks-jungle>);
<ore:plankWood>.remove(<minecraft:planks:*>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:1>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:2>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:3>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:4>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:5>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:6>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:7>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:8>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:9>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:10>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:11>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:12>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:13>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:14>);
<ore:plankWood>.remove(<biomesoplenty:planks_0:15>);
<ore:plankWood>.remove(<chisel:planks-oak:1>);
<ore:plankWood>.remove(<chisel:planks-oak:2>);
<ore:plankWood>.remove(<chisel:planks-oak:3>);
<ore:plankWood>.remove(<chisel:planks-oak:4>);
<ore:plankWood>.remove(<chisel:planks-oak:5>);
<ore:plankWood>.remove(<chisel:planks-oak:6>);
<ore:plankWood>.remove(<chisel:planks-oak:7>);
<ore:plankWood>.remove(<chisel:planks-oak:8>);
<ore:plankWood>.remove(<chisel:planks-oak:9>);
<ore:plankWood>.remove(<chisel:planks-oak:10>);
<ore:plankWood>.remove(<chisel:planks-oak:11>);
<ore:plankWood>.remove(<chisel:planks-oak:12>);
<ore:plankWood>.remove(<chisel:planks-oak:13>);
<ore:plankWood>.remove(<chisel:planks-oak:14>);
<ore:plankWood>.remove(<chisel:planks-spruce:1>);
<ore:plankWood>.remove(<chisel:planks-spruce:2>);
<ore:plankWood>.remove(<chisel:planks-spruce:3>);
<ore:plankWood>.remove(<chisel:planks-spruce:4>);
<ore:plankWood>.remove(<chisel:planks-spruce:5>);
<ore:plankWood>.remove(<chisel:planks-spruce:6>);
<ore:plankWood>.remove(<chisel:planks-spruce:7>);
<ore:plankWood>.remove(<chisel:planks-spruce:8>);
<ore:plankWood>.remove(<chisel:planks-spruce:9>);
<ore:plankWood>.remove(<chisel:planks-spruce:10>);
<ore:plankWood>.remove(<chisel:planks-spruce:11>);
<ore:plankWood>.remove(<chisel:planks-spruce:12>);
<ore:plankWood>.remove(<chisel:planks-spruce:13>);
<ore:plankWood>.remove(<chisel:planks-spruce:14>);
<ore:plankWood>.remove(<chisel:planks-birch:1>);
<ore:plankWood>.remove(<chisel:planks-birch:2>);
<ore:plankWood>.remove(<chisel:planks-birch:3>);
<ore:plankWood>.remove(<chisel:planks-birch:4>);
<ore:plankWood>.remove(<chisel:planks-birch:5>);
<ore:plankWood>.remove(<chisel:planks-birch:6>);
<ore:plankWood>.remove(<chisel:planks-birch:7>);
<ore:plankWood>.remove(<chisel:planks-birch:8>);
<ore:plankWood>.remove(<chisel:planks-birch:9>);
<ore:plankWood>.remove(<chisel:planks-birch:10>);
<ore:plankWood>.remove(<chisel:planks-birch:11>);
<ore:plankWood>.remove(<chisel:planks-birch:12>);
<ore:plankWood>.remove(<chisel:planks-birch:13>);
<ore:plankWood>.remove(<chisel:planks-birch:14>);
<ore:plankWood>.remove(<chisel:planks-jungle:1>);
<ore:plankWood>.remove(<chisel:planks-jungle:2>);
<ore:plankWood>.remove(<chisel:planks-jungle:3>);
<ore:plankWood>.remove(<chisel:planks-jungle:4>);
<ore:plankWood>.remove(<chisel:planks-jungle:5>);
<ore:plankWood>.remove(<chisel:planks-jungle:6>);
<ore:plankWood>.remove(<chisel:planks-jungle:7>);
<ore:plankWood>.remove(<chisel:planks-jungle:8>);
<ore:plankWood>.remove(<chisel:planks-jungle:9>);
<ore:plankWood>.remove(<chisel:planks-jungle:10>);
<ore:plankWood>.remove(<chisel:planks-jungle:11>);
<ore:plankWood>.remove(<chisel:planks-jungle:12>);
<ore:plankWood>.remove(<chisel:planks-jungle:13>);
<ore:plankWood>.remove(<chisel:planks-jungle:14>);
<ore:plankWood>.remove(<chisel:planks-acacia:1>);
<ore:plankWood>.remove(<chisel:planks-acacia:2>);
<ore:plankWood>.remove(<chisel:planks-acacia:3>);
<ore:plankWood>.remove(<chisel:planks-acacia:4>);
<ore:plankWood>.remove(<chisel:planks-acacia:5>);
<ore:plankWood>.remove(<chisel:planks-acacia:6>);
<ore:plankWood>.remove(<chisel:planks-acacia:7>);
<ore:plankWood>.remove(<chisel:planks-acacia:8>);
<ore:plankWood>.remove(<chisel:planks-acacia:9>);
<ore:plankWood>.remove(<chisel:planks-acacia:10>);
<ore:plankWood>.remove(<chisel:planks-acacia:11>);
<ore:plankWood>.remove(<chisel:planks-acacia:12>);
<ore:plankWood>.remove(<chisel:planks-acacia:13>);
<ore:plankWood>.remove(<chisel:planks-acacia:14>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:1>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:2>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:3>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:4>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:5>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:6>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:7>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:8>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:9>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:10>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:11>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:12>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:13>);
<ore:plankWood>.remove(<chisel:planks-dark-oak:14>);
<ore:plankWood>.remove(<fp:planks:1>);
<ore:plankWood>.remove(<primal:planks:1>);
<ore:plankWood>.remove(<primal:planks:2>);
<ore:plankWood>.remove(<primal:planks:3>);
<ore:plankWood>.remove(<twilightforest:tower_wood:*>);

<ore:blockWood>.add(<cuisine:planks>);
<ore:blockWood>.add(<integrateddynamics:menril_planks>);
<ore:blockWood>.add(<biomesoplenty:planks_0>);
<ore:blockWood>.add(<primal:planks>);
<ore:blockWood>.add(<minecraft:planks>);
<ore:blockWood>.add(<immersiveengineering:treated_wood>);
<ore:blockWood>.add(<techreborn:rubber_planks>);
<ore:blockWood>.add(<twilightforest:tower_wood>);
<ore:blockWood>.add(<chisel:planks-spruce>);
<ore:blockWood>.add(<evilcraft:undead_plank>);
<ore:blockWood>.add(<chisel:planks-dark-oak>);
<ore:blockWood>.add(<chisel:planks-oak>);
<ore:blockWood>.add(<fp:planks>);
<ore:blockWood>.add(<naturesaura:ancient_planks>);
<ore:blockWood>.add(<advancedrocketry:planks>);
<ore:blockWood>.add(<chisel:planks-birch>);
<ore:blockWood>.add(<chisel:planks-acacia>);
<ore:blockWood>.add(<chisel:planks-jungle>);
<ore:blockWood>.add(<minecraft:planks:*>);
<ore:blockWood>.add(<biomesoplenty:planks_0:1>);
<ore:blockWood>.add(<biomesoplenty:planks_0:2>);
<ore:blockWood>.add(<biomesoplenty:planks_0:3>);
<ore:blockWood>.add(<biomesoplenty:planks_0:4>);
<ore:blockWood>.add(<biomesoplenty:planks_0:5>);
<ore:blockWood>.add(<biomesoplenty:planks_0:6>);
<ore:blockWood>.add(<biomesoplenty:planks_0:7>);
<ore:blockWood>.add(<biomesoplenty:planks_0:8>);
<ore:blockWood>.add(<biomesoplenty:planks_0:9>);
<ore:blockWood>.add(<biomesoplenty:planks_0:10>);
<ore:blockWood>.add(<biomesoplenty:planks_0:11>);
<ore:blockWood>.add(<biomesoplenty:planks_0:12>);
<ore:blockWood>.add(<biomesoplenty:planks_0:13>);
<ore:blockWood>.add(<biomesoplenty:planks_0:14>);
<ore:blockWood>.add(<biomesoplenty:planks_0:15>);
<ore:blockWood>.add(<chisel:planks-oak:1>);
<ore:blockWood>.add(<chisel:planks-oak:2>);
<ore:blockWood>.add(<chisel:planks-oak:3>);
<ore:blockWood>.add(<chisel:planks-oak:4>);
<ore:blockWood>.add(<chisel:planks-oak:5>);
<ore:blockWood>.add(<chisel:planks-oak:6>);
<ore:blockWood>.add(<chisel:planks-oak:7>);
<ore:blockWood>.add(<chisel:planks-oak:8>);
<ore:blockWood>.add(<chisel:planks-oak:9>);
<ore:blockWood>.add(<chisel:planks-oak:10>);
<ore:blockWood>.add(<chisel:planks-oak:11>);
<ore:blockWood>.add(<chisel:planks-oak:12>);
<ore:blockWood>.add(<chisel:planks-oak:13>);
<ore:blockWood>.add(<chisel:planks-oak:14>);
<ore:blockWood>.add(<chisel:planks-spruce:1>);
<ore:blockWood>.add(<chisel:planks-spruce:2>);
<ore:blockWood>.add(<chisel:planks-spruce:3>);
<ore:blockWood>.add(<chisel:planks-spruce:4>);
<ore:blockWood>.add(<chisel:planks-spruce:5>);
<ore:blockWood>.add(<chisel:planks-spruce:6>);
<ore:blockWood>.add(<chisel:planks-spruce:7>);
<ore:blockWood>.add(<chisel:planks-spruce:8>);
<ore:blockWood>.add(<chisel:planks-spruce:9>);
<ore:blockWood>.add(<chisel:planks-spruce:10>);
<ore:blockWood>.add(<chisel:planks-spruce:11>);
<ore:blockWood>.add(<chisel:planks-spruce:12>);
<ore:blockWood>.add(<chisel:planks-spruce:13>);
<ore:blockWood>.add(<chisel:planks-spruce:14>);
<ore:blockWood>.add(<chisel:planks-birch:1>);
<ore:blockWood>.add(<chisel:planks-birch:2>);
<ore:blockWood>.add(<chisel:planks-birch:3>);
<ore:blockWood>.add(<chisel:planks-birch:4>);
<ore:blockWood>.add(<chisel:planks-birch:5>);
<ore:blockWood>.add(<chisel:planks-birch:6>);
<ore:blockWood>.add(<chisel:planks-birch:7>);
<ore:blockWood>.add(<chisel:planks-birch:8>);
<ore:blockWood>.add(<chisel:planks-birch:9>);
<ore:blockWood>.add(<chisel:planks-birch:10>);
<ore:blockWood>.add(<chisel:planks-birch:11>);
<ore:blockWood>.add(<chisel:planks-birch:12>);
<ore:blockWood>.add(<chisel:planks-birch:13>);
<ore:blockWood>.add(<chisel:planks-birch:14>);
<ore:blockWood>.add(<chisel:planks-jungle:1>);
<ore:blockWood>.add(<chisel:planks-jungle:2>);
<ore:blockWood>.add(<chisel:planks-jungle:3>);
<ore:blockWood>.add(<chisel:planks-jungle:4>);
<ore:blockWood>.add(<chisel:planks-jungle:5>);
<ore:blockWood>.add(<chisel:planks-jungle:6>);
<ore:blockWood>.add(<chisel:planks-jungle:7>);
<ore:blockWood>.add(<chisel:planks-jungle:8>);
<ore:blockWood>.add(<chisel:planks-jungle:9>);
<ore:blockWood>.add(<chisel:planks-jungle:10>);
<ore:blockWood>.add(<chisel:planks-jungle:11>);
<ore:blockWood>.add(<chisel:planks-jungle:12>);
<ore:blockWood>.add(<chisel:planks-jungle:13>);
<ore:blockWood>.add(<chisel:planks-jungle:14>);
<ore:blockWood>.add(<chisel:planks-acacia:1>);
<ore:blockWood>.add(<chisel:planks-acacia:2>);
<ore:blockWood>.add(<chisel:planks-acacia:3>);
<ore:blockWood>.add(<chisel:planks-acacia:4>);
<ore:blockWood>.add(<chisel:planks-acacia:5>);
<ore:blockWood>.add(<chisel:planks-acacia:6>);
<ore:blockWood>.add(<chisel:planks-acacia:7>);
<ore:blockWood>.add(<chisel:planks-acacia:8>);
<ore:blockWood>.add(<chisel:planks-acacia:9>);
<ore:blockWood>.add(<chisel:planks-acacia:10>);
<ore:blockWood>.add(<chisel:planks-acacia:11>);
<ore:blockWood>.add(<chisel:planks-acacia:12>);
<ore:blockWood>.add(<chisel:planks-acacia:13>);
<ore:blockWood>.add(<chisel:planks-acacia:14>);
<ore:blockWood>.add(<chisel:planks-dark-oak:1>);
<ore:blockWood>.add(<chisel:planks-dark-oak:2>);
<ore:blockWood>.add(<chisel:planks-dark-oak:3>);
<ore:blockWood>.add(<chisel:planks-dark-oak:4>);
<ore:blockWood>.add(<chisel:planks-dark-oak:5>);
<ore:blockWood>.add(<chisel:planks-dark-oak:6>);
<ore:blockWood>.add(<chisel:planks-dark-oak:7>);
<ore:blockWood>.add(<chisel:planks-dark-oak:8>);
<ore:blockWood>.add(<chisel:planks-dark-oak:9>);
<ore:blockWood>.add(<chisel:planks-dark-oak:10>);
<ore:blockWood>.add(<chisel:planks-dark-oak:11>);
<ore:blockWood>.add(<chisel:planks-dark-oak:12>);
<ore:blockWood>.add(<chisel:planks-dark-oak:13>);
<ore:blockWood>.add(<chisel:planks-dark-oak:14>);
<ore:blockWood>.add(<fp:planks:1>);
<ore:blockWood>.add(<primal:planks:1>);
<ore:blockWood>.add(<primal:planks:2>);
<ore:blockWood>.add(<primal:planks:3>);
<ore:blockWood>.add(<twilightforest:tower_wood:*>);