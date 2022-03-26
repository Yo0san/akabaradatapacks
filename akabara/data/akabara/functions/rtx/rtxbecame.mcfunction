clear @s
tag @s remove murder
tag @s remove ghost
tag @s remove mnone
tag @s add rtm
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】TM-テーザー銃","color":"yellow","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"ただのテーザー銃だ。","color":"yellow","italic":false}','{"text":"当たったプレイヤーをスタンさせる。","color":"yellow","italic":false}','{"text":"消費電力：10","color":"yellow","italic":false}']},CustomModelData:102,thmsk1:1} 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】TM-sonar","color":"yellow","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"20m以内にいる人間を発光させる。","color":"yellow","italic":false}','{"text":"消費電力：15","color":"yellow","italic":false}']},CustomModelData:103,rtmsk2:1} 1
give @s tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1
tellraw @s {"text":"\u30e9\u30c6\u30a3\u30de\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\u3002","bold":true}