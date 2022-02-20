clear @s
tellraw @s {"text":"\u306a\u3057\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
tag @s remove normal
tag @s remove Helper
tag @s remove Jumper
tag @s remove Porter
tag @s add none
give @s tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1