playsound minecraft:block.beacon.deactivate master @a ~ ~ ~ 10 2
function akabara:rng/get
execute if score @s rng matches 0..20 run tp @s 1001.47 63.00 -23.51
execute if score @s rng matches 21..40 run tp @s 992.51 63.00 -82.53
execute if score @s rng matches 41..60 run tp @s 1026.47 57.00 -45.56
execute if score @s rng matches 61..80 run tp @s 969.51 73.00 -29.36
execute if score @s rng matches 81..100 run tp @s 1009.44 78.00 -24.54
clear @s warped_fungus_on_a_stick{nmsk:2}
scoreboard players add @s nmsk2cdas2 1