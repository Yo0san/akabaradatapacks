setblock 1029 58 -137 air
playsound minecraft:entity.wither.ambient master @a 1029.5 58.5 -137.5 999 0.0
scoreboard players remove 残り絵画 painting 1
scoreboard players set B燃やす処理 furnace 0
bossbar set minecraft:fire value 0
function akabara:lootchest/startlootchest
kill @e[type=item,nbt={Item:{id:"minecraft:painting",Count:1b,tag:{paint:1}}}]
#teamhumanの残り絵画の処理
execute if score 残り絵画 painting matches 10 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b10\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 9 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b9\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 8 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b8\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 7 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b7\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 6 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b6\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 5 run tellraw @a {"text":"\u6b8b\u308a\u7d75\u753b5\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 4 run tellraw @a {"text":"\u7d75\u753b\u3092\u71c3\u3084\u3057\u305f \u6b8b\u308a4\u500b","bold":true,"color":"dark_gray"}
execute if score 残り絵画 painting matches 3 run tellraw @a ["",{"text":"\u6b8b\u308a\u7d75\u753b","bold":true,"color":"dark_gray"},{"text":"3","bold":true,"color":"yellow"},{"text":"\u500b","bold":true,"color":"dark_gray"}]
execute if score 残り絵画 painting matches 2 run tellraw @a ["",{"text":"\u6b8b\u308a\u7d75\u753b","bold":true,"color":"dark_gray"},{"text":"2","bold":true,"color":"red"},{"text":"\u500b","bold":true,"color":"dark_gray"}]
execute if score 残り絵画 painting matches 1 run tellraw @a ["",{"text":"\u6b8b\u308a\u7d75\u753b","bold":true,"color":"dark_gray"},{"text":"1","bold":true,"color":"dark_red"},{"text":"\u500b","bold":true,"color":"dark_gray"}]
execute if score 残り絵画 painting matches 0 run function akabara:furnace/allfirepaint