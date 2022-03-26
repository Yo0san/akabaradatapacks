#終了の動作
tag @a add notakabara
execute in minecraft:overworld run tp @a[tag=goal] 975.83 65.00 117.35 900.43 2.40
execute in minecraft:overworld run tp @a[tag=!goal] 978.68 63.00 108.26 1081.10 -9.26
gamemode adventure @a
playsound minecraft:entity.ender_dragon.ambient master @a ~ ~ ~ 999 1
tellraw @a [{"text":"\u8131\u51fa\u8005\uff1a","bold":true,"color":"gold"},{"selector":"@a[tag=goal]"},{"text":"\uff01","bold":true,"color":"gold"}]
title @a times 20 100 20
title @a subtitle {"text":"\u7d42\u4e86","bold":true,"color":"red"}
title @a title {"text":"\u8d64\u8594\u8587\u306e\u9928","bold":true,"color":"red"}
tag @a remove normal
tag @a remove Helper
tag @a remove none
tag @a remove goal
tag @a remove murder
tag @a remove mnone
tag @a remove rtm
tag @a remove ghost
execute as @a[team=oni] at @s run attribute @s minecraft:generic.movement_speed base set 0.1
scoreboard players reset @a nmskcd1
scoreboard players reset @a nmskcdas
scoreboard players reset @a nmskcd2
scoreboard players reset @a nmsk2cdas2
scoreboard players reset @a hpscdsu
scoreboard players reset @a hpscd1
scoreboard players reset @a hpscdsu2
scoreboard players reset @a hpscd2
scoreboard players reset @a akabara
scoreboard players reset 燃やす処理 furnace
scoreboard players reset 残り絵画 painting
scoreboard players reset チェスト更新セットアップ chestloottimest
scoreboard players reset チェスト更新タイム loottime
scoreboard players reset @a[team=oni] murskill2st
scoreboard players reset @a[team=oni] murskillcd2
scoreboard players reset @a[team=oni] murskill1st
scoreboard players reset @a[team=oni] murskillcd1
scoreboard players reset @a thmsk1cdst
scoreboard players reset @a thmsk1cd
scoreboard players reset @a thmsk2cdst
scoreboard players reset @a thmsk2cd
scoreboard players reset @a rtmsk2spo1
scoreboard players reset @a rtmsk2spopy1
scoreboard players reset @a thmcharge
execute as @a[tag=ghost] at @s run function akabara:ghost/ytz1
execute as @a[tag=ghost] at @s run scoreboard players reset @s ghsk2cdst
execute as @a[tag=ghost] at @s run scoreboard players reset @s ghsk2cd
scoreboard players set 玄関のドアセットアップ aysentdooropenst 0
scoreboard players set 玄関ドア aysentdooropen 0
xp set @a 0 levels
bossbar set minecraft:fire value 0
scoreboard objectives remove akabara
scoreboard objectives remove bflimittime
setblock 1053 58 -51 air
setblock 1028 56 -31 minecraft:iron_bars[east=true,north=true,south=true,waterlogged=false,west=true]
setblock 1040 56 -31 minecraft:iron_bars[east=true,north=true,south=true,waterlogged=false,west=true]
fill 992 61 -22 991 61 -22 minecraft:air
effect clear @a[team=oni] strength
fill 997 82 -30 997 78 -30 air
clear @a
team leave @a