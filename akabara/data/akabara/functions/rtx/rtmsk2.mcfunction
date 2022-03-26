scoreboard players remove @s thmcharge 15
xp add @s -15 levels
clear @s minecraft:warped_fungus_on_a_stick{rtmsk2:1}
scoreboard players set @s rtmsk2cdst 1
playsound block.anvil.place master @a ~ ~ ~ 5 0
execute as @a[team=!oni,distance=..20] positioned ~ ~10 ~ if entity @s[distance=..20] run effect give @s glowing 5 0 true
execute as @a[team=!oni,distance=..20] positioned ~ ~5 ~ if entity @s[distance=..20] run effect give @s glowing 5 0 true
