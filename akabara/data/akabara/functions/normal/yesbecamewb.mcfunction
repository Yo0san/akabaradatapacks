#なれた時
tag @s remove Helper
tag @s remove Porter
tag @s remove Jumper
tag @s remove none
tag @s add normal
clear @s
tellraw @s {"text":"\u30a6\u30a3\u30f3\u30c9\u30d6\u30ec\u30a4\u30ab\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s feather{display:{Name:'{"text":"【スキル】run away!","color":"aqua","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用","color":"white","italic":false}','{"text":"<スキル> 5秒間移動速度が上昇する。","color":"aqua","italic":false}','{"text":"クールタイム30秒","color":"aqua","italic":false}']},nmsk:1} 1
give @s blaze_rod{display:{Name:'{"text":"【スキル】ランダムtp","color":"aqua","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用","color":"white","italic":false}','{"text":"<スキル>5箇所にランダムでtpする。","color":"aqua","italic":false}','{"text":"クールタイム60秒","color":"aqua","italic":false}']},nmsk:2} 1