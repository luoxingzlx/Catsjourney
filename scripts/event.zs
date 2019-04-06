import crafttweaker.item.IItemStack;
import crafttweaker.player.IPlayer;
import crafttweaker.events.IEventManager;
import crafttweaker.event.PlayerChangedDimensionEvent;
import crafttweaker.event.PlayerPickupItemEvent;
import crafttweaker.oredict.IOreDict;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.event.PlayerInteractBlockEvent;

//nether mobstage

events.onPlayerChangedDimension(function(event as crafttweaker.event.PlayerChangedDimensionEvent){
val Message = "welcome to nether";
	if (!event.player.hasGameStage("nether") && event.to == -1){
		event.player.addGameStage("nether");
		event.player.sendChat(Message);
	}
return;

});

//Eden mobstage

events.onPlayerInteractBlock(function(event as crafttweaker.event.PlayerInteractBlockEvent){
    val Message = "test";
    val item = <minecraft:stone>;
    if (!event.player.hasGameStage("eden") && event.useBlock == "DEFAULT"){
        event.player.addGameStage("eden");
        event.player.sendChat(Message);
        }
        return;
        
        });