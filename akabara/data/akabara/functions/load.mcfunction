tellraw @a ["",{"text":"\u8d64\u8594\u8587\u30c7\u30fc\u30bf\u30d1\u30c3\u30af","bold":true,"color":"dark_red"},{"text":"\n"},{"text":"made by ","color":"dark_red"},{"text":"\u3088\u30fc","bold":true,"color":"dark_red"}]
execute as @e[type=minecraft:falling_block,tag=Madowaku] run data merge entity @s {Time:-2147483648}
execute as @e[type=minecraft:falling_block,tag=hideblock] run data merge entity @s {Time:-2147483648}
#execute unless score #3 yvsk1no matches 3 run function akabara:load_once
summon falling_block ~ ~ ~ {BlockState:{Name:"minecraft:spruce_planks"},NoGravity:1b,Time:-2147483648,Tags:["hideblock"]}