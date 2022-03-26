clear @s
tag @s remove murder
tag @s remove rtm
tag @s remove ghost
tag @s add mnone
tellraw @s {"text":"\u306a\u3057\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1