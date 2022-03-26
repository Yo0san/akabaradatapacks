execute in minecraft:overworld run tp @s 1060.89 58.00 -131.52 85.71 8.17
item replace entity @s inventory.5 with barrier{display:{Name:'{"text":"現在使用できません","color":"red","italic":false}'}} 1
execute as @a[team=!oni,distance=..15] positioned ~ ~10 ~ if entity @s[distance=..15] run effect give @s glowing 10 0 true
execute as @a[team=!oni,distance=..15] positioned ~ ~10 ~ if entity @s[distance=..15] run effect give @s slowness 3 1 true
execute as @a[team=!oni,distance=..15] positioned ~ ~10 ~ if entity @s[distance=..15] run playsound entity.arrow.hit_player master @s ~ ~ ~ 1 1
scoreboard players set @s tpc6cdst 1