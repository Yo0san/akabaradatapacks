data remove storage mgs:tmp Item
data modify storage mgs:tmp Item.tag set value {CustomModelData:530,Id:530,display:{Name:"{\"text\":\"M249\",\"italic\":\"false\"}"}}
scoreboard players operation v0 V = m249_damage S
scoreboard players operation v1 V = m249_cooldown S
scoreboard players operation v2 V = m249_acc_sneaky S
scoreboard players operation v3 V = m249_mag S
scoreboard players operation v4 V = m249_reload S
function mgs:guns/_common/gen/gun