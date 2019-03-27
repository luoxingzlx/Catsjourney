#rockhounding_chemistry

//#蒸汽转换
mods.rockhounding_chemistry.Transposer.add(<liquid:steam>*1000, <liquid:water_vapour>*1000);

//#碳化硅
mods.rockhounding_chemistry.DepositionChamber.removeByOutput(<rockhounding_chemistry:alloy_items_tech:31>);

//#硅
mods.rockhounding_chemistry.PullingCrucible.add(<rockhounding_chemistry:alloy_items_tech:31>, <rockhounding_chemistry:chemical_dusts:13>, <appliedenergistics2:material:5>*4);

//#裂化煤
mods.rockhounding_chemistry.MineralSizer.add(<rockhounding_chemistry:chemical_dusts:24>, [<rockhounding_chemistry:chemical_items>, <rockhounding_chemistry:chemical_items>], [2, 2]);

//#氟石
mods.rockhounding_chemistry.MineralSizer.add(<rockhounding_chemistry:halide_shards:4>, [<rockhounding_chemistry:chemical_items:4>, <rockhounding_chemistry:chemical_items:4>], [4, 4]);
mods.rockhounding_chemistry.MineralSizer.add(<rockhounding_chemistry:halide_shards:3>, [<rockhounding_chemistry:chemical_items:4>, <rockhounding_chemistry:chemical_items:4>], [4, 4]);
mods.rockhounding_chemistry.MineralSizer.add(<rockhounding_chemistry:carbonate_shards:3>, [<rockhounding_chemistry:chemical_items:4>, <rockhounding_chemistry:chemical_items:4>], [4, 4]);
mods.rockhounding_chemistry.MineralSizer.add(<rockhounding_chemistry:halide_shards:5>, [<rockhounding_chemistry:chemical_items:4>, <rockhounding_chemistry:chemical_items:4>], [4, 4]);
