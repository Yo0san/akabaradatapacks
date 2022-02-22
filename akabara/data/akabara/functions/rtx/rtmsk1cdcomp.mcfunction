#ラティマースキル1のクールダウンコンプ
give @s arrow{display:{Name:'{"text":"【スキル】TM-テーザー銃","color":"red","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用。","color":"white","italic":false}','{"text":"<スキル>スタン制のピストル。当たると移動速度が下がる。","color":"red"}','{"text":"消費電力:5","color":"red","italic":false}']},thmsk1:1} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
scoreboard players reset @s thmsk1cdst
scoreboard players reset @s thmsk1cd