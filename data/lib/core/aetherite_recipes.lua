--[[
    Aethrium Aetherite & Crafting System
    Phase 4: Recipe Database
    Developer: Antigravity (Senior AI Coding Assistant)

    INSTRUÇÕES: 
    1. Ajuste os IDs dos itens nos campos 'resultId' e 'baseItemId' conforme sua itens.xml.
    2. 'ingredients' suporta múltiplos itens.
]]--

AetheriteRecipes = {
    -- SKILL IDs
    SKILL_COLETA = 1,
    SKILL_REFINO = 2,
    SKILL_CRAFTING = 3,

    -- CONSTANTS
    SOLID_ID = 2154,
    STORE_ESSENCE_ID = 25555, -- Placeholder para Item da Store

    -- RECIPE LIST
    -- Estrutura: { name, vocation, tier, ingredients, gold, resultId, chance, masterworkChance }
    items = {
        -- KNIGHT SERIES (Falcon, Cobra, Lion)
        -- Falcon Plate (T1, T2, T3)
        [1] = { name = "Aetherite Falcon Plate (T1)", tier = 1, baseItemId = 28719, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40001, chance = 80, mwChance = 5 },
        [2] = { name = "Sovereign Falcon Plate (T2)", tier = 2, baseItemId = 40001, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40002, chance = 60, mwChance = 10 },
        [3] = { name = "Eternal Falcon Plate (T3)", tier = 3, baseItemId = 40002, ingredients = {{id = 2154, count = 100}, {id = 25555, count = 1}}, gold = 10000000, resultId = 40003, chance = 40, mwChance = 20 },

        -- Falcon Longsword
        [4] = { name = "Aetherite Falcon Longsword (T1)", tier = 1, baseItemId = 28723, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40004, chance = 80, mwChance = 5 },
        [5] = { name = "Sovereign Falcon Longsword (T2)", tier = 2, baseItemId = 40004, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40005, chance = 60, mwChance = 10 },
        [6] = { name = "Eternal Falcon Longsword (T3)", tier = 3, baseItemId = 40005, ingredients = {{id = 2154, count = 100}, {id = 25555, count = 1}}, gold = 10000000, resultId = 40006, chance = 40, mwChance = 20 },

        -- Cobra Axe
        [7] = { name = "Aetherite Cobra Axe (T1)", tier = 1, baseItemId = 30396, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40010, chance = 80, mwChance = 5 },
        [8] = { name = "Sovereign Cobra Axe (T2)", tier = 2, baseItemId = 40010, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40011, chance = 60, mwChance = 10 },

        -- Lion Shield
        [9] = { name = "Aetherite Lion Shield (T1)", tier = 1, baseItemId = 34154, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40020, chance = 80, mwChance = 5 },

        -- PALADIN SERIES
        -- Falcon Bow
        [10] = { name = "Aetherite Falcon Bow (T1)", tier = 1, baseItemId = 28718, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40100, chance = 80, mwChance = 5 },
        [11] = { name = "Sovereign Falcon Bow (T2)", tier = 2, baseItemId = 40100, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40101, chance = 60, mwChance = 10 },
        [12] = { name = "Eternal Falcon Bow (T3)", tier = 3, baseItemId = 40101, ingredients = {{id = 2154, count = 100}, {id = 25555, count = 1}}, gold = 10000000, resultId = 40102, chance = 40, mwChance = 20 },

        -- Cobra Crossbow
        [13] = { name = "Aetherite Cobra Crossbow (T1)", tier = 1, baseItemId = 30393, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40110, chance = 80, mwChance = 5 },
        
        -- Lion Longbow
        [14] = { name = "Aetherite Lion Longbow (T1)", tier = 1, baseItemId = 34150, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40120, chance = 80, mwChance = 5 },

        -- MAGE SERIES
        -- Falcon Wand
        [15] = { name = "Aetherite Falcon Wand (T1)", tier = 1, baseItemId = 28717, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40200, chance = 80, mwChance = 5 },
        [16] = { name = "Sovereign Falcon Wand (T2)", tier = 2, baseItemId = 40200, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40201, chance = 60, mwChance = 10 },
        [17] = { name = "Eternal Falcon Wand (T3)", tier = 3, baseItemId = 40201, ingredients = {{id = 2154, count = 100}, {id = 25555, count = 1}}, gold = 10000000, resultId = 40202, chance = 40, mwChance = 20 },

        -- Cobra Rod
        [18] = { name = "Aetherite Cobra Rod (T1)", tier = 1, baseItemId = 30400, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40210, chance = 80, mwChance = 5 },

        -- Lion Wand
        [19] = { name = "Aetherite Lion Wand (T1)", tier = 1, baseItemId = 34152, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40220, chance = 80, mwChance = 5 },

        -- PIECES (Helm/Legs/Boots)
        -- Falcon Greaves
        [20] = { name = "Aetherite Falcon Greaves (T1)", tier = 1, baseItemId = 28720, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40300, chance = 85, mwChance = 5 },
        [21] = { name = "Sovereign Falcon Greaves (T2)", tier = 2, baseItemId = 40300, ingredients = {{id = 2154, count = 50}}, gold = 5000000, resultId = 40301, chance = 65, mwChance = 10 },
        
        -- Cobra Boots
        [22] = { name = "Aetherite Cobra Boots (T1)", tier = 1, baseItemId = 30394, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40310, chance = 85, mwChance = 5 },

        -- Falcon Circlet
        [23] = { name = "Aetherite Falcon Circlet (T1)", tier = 1, baseItemId = 28714, ingredients = {{id = 2154, count = 25}}, gold = 1000000, resultId = 40320, chance = 85, mwChance = 5 }
    }
}

-- Helper function to get all recipes (Universal Crafting)
function AetheriteRecipes.getAll()
    local result = {}
    for id, recipe in pairs(AetheriteRecipes.items) do
        local copy = {}
        for k, v in pairs(recipe) do copy[k] = v end
        copy.id = id -- Store original ID
        table.insert(result, copy)
    end
    return result
end
