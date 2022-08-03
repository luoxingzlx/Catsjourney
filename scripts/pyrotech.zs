import mods.pyrotech.Bloomery;
import mods.pyrotech.PitKiln;
import mods.pyrotech.Burn;

//#锻造炉
/*
import mods.pyrotech.Bloomery;

// recipe for an iron bloom from an iron ore
Bloomery.createBloomeryBuilder(
        "bloom_from_iron_ore",   // recipe name
        <minecraft:iron_nugget>, // output
        <minecraft:iron_ore>     // input
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(28800)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:generated_slag_iron>, 4)
    .addFailureItem(<pyrotech:slag>, 1)
    .addFailureItem(<pyrotech:generated_slag_iron>, 2)
    .register();

// recipe for an iron slag bloom from an iron slag pile
Bloomery.createBloomeryBuilder(
        "bloom_from_iron_slag",             // recipe name
        <minecraft:iron_nugget>,            // output
        <pyrotech:generated_pile_slag_iron> // input
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(14400)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:generated_slag_iron>, 2)
    .addFailureItem(<pyrotech:rock:0>, 1)
    .addFailureItem(<pyrotech:slag>, 2)
    .setLangKey("tile.oreIron;item.pyrotech.slag.unique")
    .register();
*/
Bloomery.createBloomeryBuilder(
        "bloom_from_iron_ore",
        <techreborn:nuggets:4>,
        <ore:dustCopper> * 8
    )
    .setAnvilTiers(["granite", "ironclad"])
    .setBurnTimeTicks(1200)
    .setFailureChance(0.25)
    .setBloomYield(12, 15)
    .setSlagItem(<pyrotech:slag>, 4)
    .addFailureItem(<pyrotech:slag>, 1)
    .addFailureItem(<pyrotech:slag>, 2)
    .register();


//#坑窑
/*
static void addRecipe(
  string name,                // unique recipe name
  IItemStack output,          // recipe output
  IIngredient input,          // recipe input
  int burnTimeTicks,          // recipe duration in ticks
  float failureChance,        // chance for item to fail conversion
  IItemStack[] failureItems,  // array of randomly chosen failure items
  @Optional boolean inherited // true if the recipe should be inherited
);

import mods.pyrotech.PitKiln;

// stone in 5 minutes, 33% chance of failure
PitKiln.addRecipe("stone_from_cobblestone", <minecraft:stone>, <minecraft:cobblestone>, 5 * 60 * 20, 0.33, [
    <pyrotech:rock>, // randomly chosen failure items
    <pyrotech:rock> * 2,
    <pyrotech:rock> * 3,
    <pyrotech:rock> * 4,
    <pyrotech:rock> * 5,
    <pyrotech:rock> * 6
]);
*/
PitKiln.addRecipe(
    "copper",
    <techreborn:nuggets:4>,
    <ore:dustCopper> * 8,
    1 * 60 * 20,
    0.80,
    [
        <techreborn:nuggets:4> * 1,
        <techreborn:nuggets:4> * 2,
        <techreborn:nuggets:4> * 3
        ]
    );

//#焚烧
/*
Burn.createBuilder("charcoal_from_log_pile", <minecraft:coal:1>, "pyrotech:log_pile:*")
    .setBurnStages(10)
    .setTotalBurnTimeTicks(8 * 60 * 20)
    .setFluidProduced(<liquid:wood_tar> * 50)
    .setFailureChance(0.33)
    .addFailureItem(<pyrotech:material:0>) // ash
    .addFailureItem(<pyrotech:material:0> * 2) // ash
    .addFailureItem(<pyrotech:material:0> * 4) // ash
    .addFailureItem(<pyrotech:material:15> * 4) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 6) // charcoal flakes
    .addFailureItem(<pyrotech:material:15> * 8) // charcoal flakes
    .setRequiresRefractoryBlocks(false)
    .setFluidLevelAffectsFailureChance(true)
    .register();
*/
/*原木焚烧为木炭（失败，无视包裹方块，会引燃树木）
Burn.createBuilder("test", <minecraft:coal:1> * 2, "minecraft:log:*")
.setBurnStages(5)
.setTotalBurnTimeTicks(1 * 60 * 20)
.setFluidProduced(<liquid:wood_tar> * 10)
.setFailureChance(0.2)
.addFailureItem(<pyrotech:material>)
.register();
*/

//#简陋工具耐久减半
<pyrotech:crude_axe>.maxDamage = 16;
<pyrotech:crude_hoe>.maxDamage = 16;
<pyrotech:crude_pickaxe>.maxDamage = 16;
<pyrotech:crude_shovel>.maxDamage = 16;
<pyrotech:crude_fishing_rod>.maxDamage = 16;

//#移除重复粘土工具合成
recipes.remove(<ceramics:clay_bucket_block>);
recipes.remove(<ceramics:unfired_clay:1>);
furnace.remove(<ceramics:clay_shears>);
furnace.remove(<ceramics:clay_bucket>);

//#工具合成更改
recipes.remove(<pyrotech:crude_hammer>);
recipes.remove(<pyrotech:crude_fishing_rod>);
recipes.remove(<pyrotech:crude_shovel>);
recipes.remove(<pyrotech:crude_pickaxe>);
recipes.remove(<pyrotech:crude_hoe>);
recipes.remove(<pyrotech:crude_axe>);
recipes.addShaped(<tconstruct:hammer_head>.withTag({Material: "stone"}), [[<ore:rock>,  null],[null, <ore:rock>]]);
recipes.addShaped(<tconstruct:shovel_head>.withTag({Material: "stone"}), [[<ore:rock>,  null],[<ore:rock>, null]]);
recipes.addShaped(<tconstruct:pick_head>.withTag({Material: "stone"}), [[<ore:rock>, <ore:rock>],[null, <ore:rock>]]);
recipes.addShaped(<tconstruct:kama_head>.withTag({Material: "stone"}), [[<ore:rock>, <ore:rock>],[null, null]]);
recipes.addShaped(<tconstruct:axe_head>.withTag({Material: "stone"}), [[<ore:rock>, <ore:rock>],[<ore:rock>, null]]);
recipes.addShaped(<tconstruct:tool_rod>.withTag({Material: "wood"}), [[null, <ore:stickWood>, null],[<ore:stickWood>, null]]);
recipes.addShaped(<pyrotech:crude_fishing_rod>, [[null, <tconstruct:tool_rod>.withTag({Material: "wood"})],[<tconstruct:tool_rod>.withTag({Material: "wood"}), <ore:twine>]]);
recipes.addShapeless(<pyrotech:crude_axe>, [<tconstruct:axe_head>.withTag({Material: "stone"}),<ore:twine>,<tconstruct:tool_rod>.withTag({Material: "wood"})]);
recipes.addShapeless(<pyrotech:crude_hoe>, [<tconstruct:kama_head>.withTag({Material: "stone"}),<ore:twine>,<tconstruct:tool_rod>.withTag({Material: "wood"})]);
recipes.addShapeless(<pyrotech:crude_pickaxe>, [<tconstruct:pick_head>.withTag({Material: "stone"}),<ore:twine>,<tconstruct:tool_rod>.withTag({Material: "wood"})]);
recipes.addShapeless(<pyrotech:crude_shovel>, [<tconstruct:shovel_head>.withTag({Material: "stone"}),<ore:twine>,<tconstruct:tool_rod>.withTag({Material: "wood"})]);
recipes.addShaped(<pyrotech:crude_hammer>, [[<tconstruct:hammer_head>.withTag({Material: "stone"}), <ore:twine>],[<ore:stickWood>, null]]);


//#凋零锻造炉合成更改
recipes.remove(<pyrotech:wither_forge>);
recipes.addShaped(<pyrotech:wither_forge>, [[<techreborn:storage2:8>, null, <techreborn:storage2:8>],[<quark:black_ash>, <pyrotech:bloomery>, <quark:black_ash>], [<techreborn:storage2:8>, <quark:black_ash>, <techreborn:storage2:8>]]);

//#耐火砖更改
recipes.remove(<pyrotech:refractory_brick_block>);
recipes.addShaped(<oreflowers:sticky_goo>, [[<pyrotech:material:25>, <pyrotech:material>, <pyrotech:material:25>],[<pyrotech:material>, <pyrotech:material:25>, <pyrotech:material>], [<pyrotech:material:25>, <pyrotech:material>, <pyrotech:material:25>]]);
recipes.addShaped(<oreflowers:sticky_goo>, [[<minecraft:slime_ball>, <pyrotech:material>, <minecraft:slime_ball>],[<pyrotech:material>, <minecraft:slime_ball>, <pyrotech:material>], [<minecraft:slime_ball>, <pyrotech:material>, <minecraft:slime_ball>]]);
recipes.addShaped(<pyrotech:refractory_brick_block>, [[<pyrotech:material:5>, <techreborn:plates:18>, <pyrotech:material:5>],[<techreborn:plates:18>, <oreflowers:sticky_goo>, <techreborn:plates:18>], [<pyrotech:material:5>, <techreborn:plates:18>, <pyrotech:material:5>]]);


/*<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 42, maxIntegrity: 42, langKey: "tile.techreborn.ore2.copper", recipeId: "pyrotech:bloomery/bloom_from_orecopper"}})
<pyrotech:material>
<pyrotech:bloom>.withTag({BlockEntityTag: {integrity: 41, maxIntegrity: 41, langKey: "tile.oreIron", recipeId: "pyrotech:bloomery/bloom_from_oreiron"}})
*/