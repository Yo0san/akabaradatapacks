#マーダースキル：威圧のクールダウンコンプ
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】怒","color":"red","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"怒りの力で加速するが、加速後スタンする。","color":"red","italic":false}','{"text":"クールタイム:45秒","color":"red"}']},CustomModelData:101,mdsk:1} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
scoreboard players reset @s murskill1st
scoreboard players reset @s murskillcd1 