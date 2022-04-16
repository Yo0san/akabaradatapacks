title @a times 20 100 20
title @a subtitle {"text":"START","bold":true,"color":"dark_gray"}
title @a title {"text":"\u8d64\u8594\u8587\u306e\u9928","bold":true,"color":"dark_red"}
playsound entity.ender_dragon.ambient master @a ~ ~ ~ 999
scoreboard players reset @a[team=oni] murskillcd2
scoreboard players set @a[team=oni,tag=murder] murskill2st 1
function akabara:lootchest/startlootchest
scoreboard players add チェスト更新セットアップ chestloottimest 1
execute in minecraft:overworld run tp @a[team=oni] 992.55 63.00 -82.60 361.30 -4.47
execute in minecraft:overworld run tp @a[team=human] 992.04 63.00 -23.22 179.57 0.78
effect give @a[team=oni] blindness 5 0 true
effect give @a[team=oni] slowness 5 255 true
effect give @a[team=oni] jump_boost 5 150 true
effect give @a[team=oni] weakness 5 255 true
xp set @a[tag=rtm] 50 levels
scoreboard players set @a[tag=rtm] thmcharge 50