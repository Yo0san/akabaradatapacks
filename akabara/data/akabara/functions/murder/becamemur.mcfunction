clear @s
tag @s add murder
tag @s remove rtm
tag @s remove mnone
tag @s remove ghost 
tellraw @s {"text":"\u30de\u30fc\u30c0\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】怒","color":"red","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"怒りの力で加速するが、加速後スタンする。","color":"red","italic":false}','{"text":"クールタイム:45秒","color":"red"}']},CustomModelData:101,mdsk:1} 1
give @s bow{display:{Name:'{"text":"【ティックスキル】遠距離射撃","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用。","color":"white","italic":false}','{"text":"<ティックスキル> 遠距離射撃ができる一撃矢がもらえる。","color":"white"}','{"text":"クールダウン：1分","color":"white"}']},Unbreakable:1b,mdsk:1} 1
give @s tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1