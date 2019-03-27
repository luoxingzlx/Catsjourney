//#crossroads青铜齿轮矿辞移除
<ore:gearBronze>.remove(<crossroads:gear_bronze>);

//#crossroads轮轴矿辞移除
<ore:stickIron>.remove(<crossroads:axle>);

//#粒
recipes.removeByRecipeName("extendedcrafting:diamond_nugget_to");
recipes.removeByRecipeName("grimoireofgaia:diamond");
recipes.removeByRecipeName("inventorypets:diamond");
recipes.removeByRecipeName("extendedcrafting:emerald_nugget_to");
recipes.removeByRecipeName("grimoireofgaia:emerald");

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

//#移除所有杆的工作台合成
mods.unidict.removalByKind.get("Crafting").remove("rod");
mods.unidict.removalByKind.get("Crafting").remove("stick");

//#移除所有锭的熔炉合成
mods.unidict.removalByKind.get("Furnace").remove("ingot");

//#修复焦黑石英和石英粉合成
mods.immersiveengineering.Crusher.addRecipe(<actuallyadditions:item_dust:7> * 2, <actuallyadditions:block_misc:3>, 4000);

//#木炭块统一
recipes.remove(<actuallyadditions:block_misc:5>);
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

//#移除原版木板矿辞添加TR木板矿辞
<ore:plankWood>.add(<techreborn:plates:3>);
<ore:plankWood>.add(<cuisine:planks>);
<ore:plankWood>.add(<biomesoplenty:planks_0>);
<ore:plankWood>.add(<primal:planks>);
<ore:plankWood>.add(<minecraft:planks>);
<ore:plankWood>.add(<techreborn:rubber_planks>);
<ore:plankWood>.add(<extrautils2:ironwood_planks>);
<ore:plankWood>.add(<twilightforest:tower_wood>);
<ore:plankWood>.add(<chisel:planks-spruce>);
<ore:plankWood>.add(<evilcraft:undead_plank>);
<ore:plankWood>.add(<chisel:planks-dark-oak>);
<ore:plankWood>.add(<chisel:planks-oak>);
<ore:plankWood>.add(<fp:planks>);
<ore:plankWood>.add(<naturesaura:ancient_planks>);
<ore:plankWood>.add(<primal:diamond_plate>);
<ore:plankWood>.add(<advancedrocketry:planks>);
<ore:plankWood>.add(<primal:carbon_plate>);
<ore:plankWood>.add(<primal:obsidian_plate>);
<ore:plankWood>.add(<chisel:planks-birch>);
<ore:plankWood>.add(<chisel:planks-acacia>);
<ore:plankWood>.add(<primal:shibuichi_plate>);
<ore:plankWood>.add(<chisel:planks-jungle>);

<ore:blockWood>.add(<cuisine:planks>);
<ore:blockWood>.add(<biomesoplenty:planks_0>);
<ore:blockWood>.add(<primal:planks>);
<ore:blockWood>.add(<minecraft:planks>);
<ore:blockWood>.add(<techreborn:rubber_planks>);
<ore:blockWood>.add(<extrautils2:ironwood_planks>);
<ore:blockWood>.add(<twilightforest:tower_wood>);
<ore:blockWood>.add(<chisel:planks-spruce>);
<ore:blockWood>.add(<evilcraft:undead_plank>);
<ore:blockWood>.add(<chisel:planks-dark-oak>);
<ore:blockWood>.add(<chisel:planks-oak>);
<ore:blockWood>.add(<fp:planks>);
<ore:blockWood>.add(<naturesaura:ancient_planks>);
<ore:blockWood>.add(<primal:diamond_plate>);
<ore:blockWood>.add(<advancedrocketry:planks>);
<ore:blockWood>.add(<primal:carbon_plate>);
<ore:blockWood>.add(<primal:obsidian_plate>);
<ore:blockWood>.add(<chisel:planks-birch>);
<ore:blockWood>.add(<chisel:planks-acacia>);
<ore:blockWood>.add(<primal:shibuichi_plate>);
<ore:blockWood>.add(<chisel:planks-jungle>);