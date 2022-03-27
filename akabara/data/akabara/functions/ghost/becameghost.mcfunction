#ゴーストになる
clear @s paper{ghic:1}
tag @s remove murder
tag @s remove rtm
tag @s remove mnone
tag @s add ghost 
scoreboard players set @s tpc1cdst 0
scoreboard players set @s tpc2cdst 0
scoreboard players set @s tpc3cdst 0
scoreboard players set @s tpc4cdst 0
scoreboard players set @s tpc5cdst 0
scoreboard players set @s tpc6cdst 0
give @s cocoa_beans{display:{Name:'{"text":"【特殊能力】幽体・具現","color":"gray","italic":false}',Lore:['{"text":"幽体と具現化を切り替える事ができる","color":"gray","italic":false}']},CustomModelData:1,yutb:1} 1
give @s warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】呪いの絵画","color":"black","italic":false}',Lore:['{"text":"取った人間のバラを一切れちぎる絵画を設置する。","color":"white","italic":false}','{"text":"※ただし、怪物がとってしまうと効果がないので注意。","color":"white","bold":true,"italic":false}','{"text":"クールタイム：1分","color":"white","italic":false}']},ghsk:2} 1
function akabara:ghost/ytz1
tellraw @s {"text":"\u30b4\u30fc\u30b9\u30c8\u30bf\u30a4\u30d7\u306b\u306a\u308a\u307e\u3057\u305f\u3002","bold":true}
playsound minecraft:block.enchantment_table.use master @s ~ ~ ~ 1 1