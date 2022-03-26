#ラティマースキル1のクールダウンコンプ
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】TM-テーザー銃","color":"yellow","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"ただのテーザー銃だ。","color":"yellow","italic":false}','{"text":"当たったプレイヤーをスタンさせる。","color":"yellow","italic":false}','{"text":"消費電力：10","color":"yellow","italic":false}']},CustomModelData:102,thmsk1:1} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
scoreboard players reset @s thmsk1cdst
scoreboard players reset @s thmsk1cd