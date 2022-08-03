//##冶炼炉
/*
mods.primal.Smelter.removeRecipe(String recipe_name);
mods.primal.Smelter.addRecipe(
    String recipe_name, 
    int cook_time, 
    IIngredient[] item_inputs, 
    IItemStack[] item_outputs
);
mods.primal.Smelter.addRecipe("unique_recipes_name", 20, [<minecraft:dirt>], [<ore:diamond>]);
*/


mods.primal.Smelter.removeRecipe("primal:dust_constantan");

mods.primal.Smelter.addRecipe("pigiron", 20, [<ore:charcoal>*4, <ore:oreClusterBogIron>*4, <ore:slackLime>*4], [<primal:crude_iron_ingot>, <primal:crude_iron_nugget>*4]);