#v9 x_rot, v10 y_rot, v11 ticks, v12 reduction, v13 kick, v15 damage

scoreboard players operation @s timestamp = time V
scoreboard players operation @s timestamp += v11 V
scoreboard players operation @s damage = v15 V
scoreboard players operation @s decay = v12 V
scoreboard players set @s d 0

execute store result entity @s Rotation[0] float 0.000001 run scoreboard players get v9 V
execute store result entity @s Rotation[1] float 0.000001 run scoreboard players get v10 V

execute store result score v0 V run data get entity @s Pos[0] 1000
execute store result score v1 V run data get entity @s Pos[1] 1000
execute store result score v2 V run data get entity @s Pos[2] 1000
execute at @s run tp @s ^ ^ ^1
execute store result score @s dx run data get entity @s Pos[0] 1000
execute store result score @s dy run data get entity @s Pos[1] 1000
execute store result score @s dz run data get entity @s Pos[2] 1000

scoreboard players operation @s dx -= v0 V
scoreboard players operation @s dy -= v1 V
scoreboard players operation @s dz -= v2 V
tag @s add fired
tag @s add ini
tag @s remove tf