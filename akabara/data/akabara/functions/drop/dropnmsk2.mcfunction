give @p blaze_rod{display:{Name:'{"text":"【スキル】ランダムtp","color":"aqua","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用","color":"white","italic":false}','{"text":"<スキル>5箇所にランダムでtpする。","color":"aqua","italic":false}','{"text":"クールタイム60秒","color":"aqua","italic":false}']},nmsk:2} 1
kill @e[type=item,nbt={Item:{id:"minecraft:blaze_rod",tag:{nmsk:2}}}]
tellraw @s {"text":"\u30b9\u30ad\u30eb\u3092\u30c9\u30ed\u30c3\u30d7\u3059\u308b\u4e8b\u306f\u51fa\u6765\u307e\u305b\u3093\u3002","bold":true,"color":"red"}
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0.0
scoreboard players reset @s dropnmsk2