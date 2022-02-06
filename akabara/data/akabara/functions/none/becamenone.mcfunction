clear @s
tellraw @s {"text":"\u306a\u3057\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tag @s remove normal
tag @s remove Helper
tag @s remove Jumper
tag @s remove Porter
tag @s add none