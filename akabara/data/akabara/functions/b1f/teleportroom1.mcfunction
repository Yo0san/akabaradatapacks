#テレポートする処理
execute in minecraft:overworld run tp @s 983.30 63.00 -31.46
playsound entity.enderman.teleport master @s ~ ~ ~ 1000 2
execute if entity @s[team=oni] run scoreboard players set @s bftimelimitst1 0