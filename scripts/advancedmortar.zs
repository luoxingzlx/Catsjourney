import mods.advancedmortars.Mortar;

/*
Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IIngredient[] inputs);
Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:gravel>, 20, [<minecraft:cobblestone> * 4]);
Mortar.addRecipe(String[] mortarTypes, IItemStack output, int duration, IItemStack secondaryOutput, float secondaryOutputChance, IIngredient[] inputs);
Mortar.addRecipe(["wood", "stone", "iron", "diamond"], <minecraft:flint>, 4, <minecraft:flint> * 2, 0.5, [<minecraft:gravel> * 3]);
*/

Mortar.addRecipe(["wood","stone", "iron", "diamond"], <minecraft:flint>, 6, [<minecraft:gravel>]);
Mortar.addRecipe(["wood","stone", "iron", "diamond"], <harderores:tinydust:2>, 6, [<minecraft:reeds>]);
Mortar.addRecipe(["wood","stone", "iron", "diamond"], <harderores:tinydust:1>, 6, [<minecraft:wheat>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <harderores:tinydust:13>, 6, [<harderores:orechunks:13>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <harderores:tinydust:12>, 6, [<harderores:orechunks:12>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <harderores:tinydust:8>, 6, [<harderores:orechunks:8>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <harderores:tinydust:8> * 2, 6, [<harderores:orechunks>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <harderores:tinydust:9>, 6, [<harderores:orechunks:9>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <techreborn:smalldust:16>, 6, [<harderores:orechunks:10>]);
Mortar.addRecipe(["stone", "iron", "diamond"], <techreborn:dust:7>, 6, [<harderores:tinydust:13> * 3, <harderores:tinydust:12> * 1]);