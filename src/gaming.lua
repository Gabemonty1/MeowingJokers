local mod = SMODS.current_mod
SMODS.Atlas({key = "MLjokers", path = "MLjokers.png", px = 71, py = 95, atlas_table = "ASSET_ATLAS"}):register()

MLconfig = SMODS.current_mod.config

--Gives 1 dollar every 100 chips
SMODS.Joker{
    name = "Play the House",
    key = "playthehouse",
    config = {

    },
    loc_txt = {
        ['name'] = 'Play the House',
        ['text'] = {
            [1] = 'Give {C:money}$#1# for every'
            [2] = '{C:chips}#100# chips scored'
        }
    },
    pos = {
        x = 0,
        y = 0
    },
    cost = 9,
    rarity = 3,
    blueprint_compat = false,
    unlocked = true,
    discovered = true,
    atlas = 'MLjokers',

    calculate = function(self, card, context)
        if context.final_scoring_step and context.cardArea == G.play then
            return {
                dollars = math.floor(hand_chips/100)
            }
        end
    end
}