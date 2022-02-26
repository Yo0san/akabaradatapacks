clear @s
tag @s add rtm
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s arrow{display:{Name:'{"text":"【スキル】TM-テーザー銃","color":"red","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用。","color":"white","italic":false}','{"text":"<スキル>スタン制のピストル。当たると移動速度が下がる。","color":"red"}','{"text":"消費電力:5","color":"red","italic":false}']},thmsk1:1} 1
give @p spider_eye{display:{Name:'{"text":"【スキル】TM-sonar","italic":false}'},rtmsk2:1} 1
give @s tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1
tellraw @s {"text":"\u30e9\u30c6\u30a3\u30de\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\u3002","bold":true}