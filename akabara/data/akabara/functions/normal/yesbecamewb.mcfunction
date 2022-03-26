#なれた時
tag @s remove Helper
tag @s remove Porter
tag @s remove Jumper
tag @s remove none
tag @s add normal
clear @s
tellraw @s {"text":"\u30a6\u30a3\u30f3\u30c9\u30d6\u30ec\u30a4\u30ab\u30fc\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\uff01","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】Run Away!","color":"aqua","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"5秒間移動速度が上がる。","color":"aqua","italic":false}','{"text":"クールタイム：30秒","color":"aqua","italic":false}']},CustomModelData:1,nmsk:1} 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】ランダムtp","color":"aqua","italic":false}',Lore:['{"text":"右クリックで使用","color":"white","italic":false}','{"text":"5か所にドロン(tp)する","color":"aqua","italic":false}','{"text":"クールタイム：2分","color":"aqua","italic":false}']},CustomModelData:2,nmsk:2} 1
give @s tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1