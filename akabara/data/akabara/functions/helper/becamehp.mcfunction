clear @s
tag @s remove normal
tag @s remove Jumper
tag @s remove Porter
tag @s remove none
tag @s add Helper
tellraw @s {"text":"\u30d8\u30eb\u30d1\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s potion{display:{Name:'{"text":"【スキル】スプラッシュモンスターエナジー","color":"#CFFF9E","italic":false}',Lore:['{"text":"持ちながらSHIFT","color":"white","italic":false}','{"text":"＜スキル＞ レッドブルより強力なエナドリ。","color":"white"}','{"text":"付近のプレイヤーに移動速度上昇を与える。","color":"white"}','{"text":"クルータイム：45秒","color":"white","italic":false}']},hps:1,CustomPotionColor:10944384} 1
give @s tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1