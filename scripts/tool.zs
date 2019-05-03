//##special

//##??
recipes.remove(<primal:bone_hatchet>);
recipes.remove(<primal:flint_hatchet>);
recipes.addShaped(<tconstruct:axe_head>.withTag({Material: "bone"}), [[<primal:bone_knapp>, <primal:bone_knapp>],[<primal:bone_knapp>]]);
recipes.addShaped(<tconstruct:axe_head>.withTag({Material: "flint"}), [[<primal:flint_knapp>, <primal:flint_knapp>],[<primal:flint_knapp>]]);
recipes.addShaped(<primal:bone_hatchet>, [[<tconstruct:axe_head>.withTag({Material: "bone"}), <ore:cordageGeneral>],[null, <tconstruct:tool_rod>.withTag({Material: "wood"})]]);
recipes.addShaped(<primal:flint_hatchet>, [[<tconstruct:axe_head>.withTag({Material: "flint"}), <ore:cordageGeneral>],[null, <tconstruct:tool_rod>.withTag({Material: "wood"})]]);


//##??
recipes.remove(<primal:flint_shears>);
recipes.remove(<primal:bone_shears>);
recipes.addShaped(<primal:bone_shears>, [[<tconstruct:knife_blade>.withTag({Material: "bone"}), null, <tconstruct:knife_blade>.withTag({Material: "bone"})],[null, <tconstruct:binding>.withTag({Material: "wood"}), null], [<tconstruct:tool_rod>.withTag({Material: "wood"}), null, <tconstruct:tool_rod>.withTag({Material: "wood"})]]);
recipes.addShaped(<primal:flint_shears>, [[<tconstruct:knife_blade>.withTag({Material: "flint"}), null, <tconstruct:knife_blade>.withTag({Material: "flint"})],[null, <tconstruct:binding>.withTag({Material: "wood"}), null], [<tconstruct:tool_rod>.withTag({Material: "wood"}), null, <tconstruct:tool_rod>.withTag({Material: "wood"})]]);
