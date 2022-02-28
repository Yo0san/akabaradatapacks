scoreboard players remove @s thmcharge 15
xp add @s -15 levels
clear @s minecraft:spider_eye{rtmsk2:1}
scoreboard players set @s rtmsk2cdst 1
execute as @a[team=!oni,dx=25,dy=4,dz=25] at @s run function akabara:rtx/rtmsk2_1