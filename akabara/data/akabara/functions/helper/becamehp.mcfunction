clear @s
tag @s remove normal
tag @s remove Jumper
tag @s remove Porter
tag @s remove none
tag @s add Helper
tellraw @s {"text":"\u30d8\u30eb\u30d1\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】スプラッシュボルトエナジー","color":"yellow","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"最近話題のエナジードリンクを改良したエナドリ","color":"yellow","italic":false}','{"text":"周囲に移動速度を上昇を与える","color":"yellow","italic":false}','{"text":"クールタイム：45秒","color":"yellow","italic":false}']},CustomModelData:3,hps:1} 1
give @s tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1