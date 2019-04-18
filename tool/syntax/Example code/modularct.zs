/*
import mods.modularmachinery.RecipeBuilder;

var machineName = "mana";

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_mana_diamond", machineName, 10)
	.addEnergyPerTickInput(1000)
	.addItemInput(<minecraft:nether_star> * 1)
	.addItemOutput(<minecraft:diamond> * 10)
	.addFluidInput(<liquid:lava> * 1000)
	.addFluidOutput(<liquid:water> * 100)
	.build();
*/
/*
	mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime)
	mods.modularmachinery.RecipeBuilder.newBuilder(String recipeRegistryName, String associatedMachineRegistryName, int processingTickTime, int sortingPriority)

	addEnergyPerTickInput(int perTick)
	addEnergyPerTickOutput(int perTick)

	addFluidInput(ILiquidStack stack)
	addFluidOutput(ILiquidStack stack)

	addItemInput(IItemStack stack)
	addItemInput(IOreDictEntry oreDict)
	addItemInput(IOreDictEntry oreDict, int amount)
	addFuelItemInout(int requiredTotalBurnTime)

	addItemOutput(IItemStack stack)
	addItemOutput(IOreDictEntry oreDict)
	addItemOutput(IOreDictEntry oreDict, int amount)

	setChance(float chance) //sets the chance on the component that was last-added to the recipe

	build() //Don't change stuff after calling this
*/
/*
import mods.modularmachinery.RecipeBuilder;

var machineName = "mana";

mods.modularmachinery.RecipeBuilder.newBuilder(machineName + "_mana_diamond", machineName, 10)
	.addEnergyPerTickInput(1000)
	.addItemInput(<minecraft:nether_star> * 1)
	.addItemOutput(<minecraft:diamond> * 10)
	.addFluidInput(<liquid:lava> * 1000)
	.addFluidOutput(<liquid:water> * 100)
	.build();
*/