if GLOBAL.IsDLCEnabled(GLOBAL.PORKLAND_DLC) then
    PrefabFiles = {
        "DLC0003/books"
    }
elseif GLOBAL.IsDLCEnabled(GLOBAL.CAPY_DLC) then
    PrefabFiles = {
        "DLC0002/books"
    }
else
    PrefabFiles = {
        "vanilla/books"
    }
end

Ingredient = GLOBAL.Ingredient
Recipe = GLOBAL.Recipe
STRINGS = GLOBAL.STRINGS

local function Books(inst)
    inst:AddComponent("reader")

    booktab = { str = STRINGS.TABS.BOOKS, sort = 998, icon = "tab_book.tex" }

    inst.components.builder:AddRecipeTab(booktab)

    Recipe("book_birds", { Ingredient("papyrus", 2), Ingredient("bird_egg", 2) }, booktab, { SCIENCE = 2, MAGIC = 0, ANCIENT = 0 })
    Recipe("book_gardening", { Ingredient("papyrus", 2), Ingredient("seeds", 1), Ingredient("poop", 1) }, booktab, { SCIENCE = 2 })
    Recipe("book_sleep", { Ingredient("papyrus", 2), Ingredient("nightmarefuel", 2) }, booktab, { MAGIC = 2 })
    Recipe("book_brimstone", { Ingredient("papyrus", 2), Ingredient("redgem", 1) }, booktab, { MAGIC = 3 })

    if GLOBAL.IsDLCEnabled(GLOBAL.CAPY_DLC) then
        Recipe("book_meteor", { Ingredient("papyrus", 2), Ingredient("obsidian", 2) }, booktab, { MAGIC = 3 })
    else
        Recipe("book_tentacles", { Ingredient("papyrus", 2), Ingredient("tentaclespots", 1) }, booktab, { MAGIC = 3 })
    end
end

AddPrefabPostInit("wilson", Books)
AddPrefabPostInit("waxwell", Books)
AddPrefabPostInit("wendy", Books)
AddPrefabPostInit("wes", Books)
AddPrefabPostInit("willow", Books)
AddPrefabPostInit("wolfgang", Books)
AddPrefabPostInit("woodie", Books)
AddPrefabPostInit("wx78", Books)
AddPrefabPostInit("wagstaff", Books)

if GLOBAL.IsDLCEnabled(GLOBAL.REIGN_OF_GIANTS) then
    AddPrefabPostInit("webber", Books)
    AddPrefabPostInit("wathgrithr", Books)
end


if GLOBAL.IsDLCEnabled(GLOBAL.CAPY_DLC) then
    AddPrefabPostInit("walani", Books)
    AddPrefabPostInit("warly", Books)
    AddPrefabPostInit("wilbur", Books)
    AddPrefabPostInit("woodlegs", Books)
end

if GLOBAL.IsDLCEnabled(GLOBAL.PORKLAND_DLC) then
    AddPrefabPostInit("wormwood", Books)
    AddPrefabPostInit("wilba", Books)
    AddPrefabPostInit("wheeler", Books)
end