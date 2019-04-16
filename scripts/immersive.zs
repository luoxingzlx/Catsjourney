import mods.immersiveengineering.ArcFurnace;

//#电弧高炉移除
mods.immersiveengineering.ArcFurnace.removeRecipe(<enderio:item_alloy_ingot>);

//#电弧高炉添加

//#矿脉移除
mods.immersiveengineering.Excavator.removeMineral("Bauxite");
mods.immersiveengineering.Excavator.removeMineral("Cassiterite");
mods.immersiveengineering.Excavator.removeMineral("Galena");
mods.immersiveengineering.Excavator.removeMineral("Gold");
mods.immersiveengineering.Excavator.removeMineral("Lead");
mods.immersiveengineering.Excavator.removeMineral("Nickel");
mods.immersiveengineering.Excavator.removeMineral("Platinum");
mods.immersiveengineering.Excavator.removeMineral("Pyrite");
mods.immersiveengineering.Excavator.removeMineral("Silver");
mods.immersiveengineering.Excavator.removeMineral("Uranium");
mods.immersiveengineering.Excavator.removeMineral("Magnetite");
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreGold");
mods.immersiveengineering.Excavator.getMineral("Copper").removeOre("oreNickel");
mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreTin");
mods.immersiveengineering.Excavator.getMineral("Iron").removeOre("oreNickel");

//#矿脉添加
mods.immersiveengineering.Excavator.getMineral("Iron").addOre("oreUninspected", 0.4737);
mods.immersiveengineering.Excavator.getMineral("Copper").addOre("oreUninspected", 0.3158);
mods.immersiveengineering.Excavator.addMineral("Uninspected", 30, 15, ["oreUninspected","oreCoal"], [75,25], [-1, 1], true);
mods.immersiveengineering.Excavator.addMineral("Sulfur", 30, 15, ["oreSulfur","blockClay"], [75,25], [-1, 1], true);