#矢を召喚する made by わんこまたー様
#まずxp処理
clear @s warped_fungus_on_a_stick{thmsk1:1}
xp add @s -10 levels
scoreboard players remove @s thmcharge 10
scoreboard players set @s thmsk1cdst 1
#矢の召喚
execute anchored eyes run summon arrow ^ ^ ^1 {life:1200s,damage:3.0d,Tags:["thmsk1ar","thmsk1op"],CustomPotionEffects:[{Id:2b,Amplifier:5b,Duration:60},{Id:8b,Amplifier:-125b,Duration:60}]}

#アマスタの召喚-アマスタの召喚位置が(0.0,0.0,0.0)から離れる程に矢の速度は大きくなります
execute rotated as @s positioned 0.0 0.0 0.0 run summon minecraft:armor_stand ^ ^ ^1.7 {Tags:["thmsk1"],Marker:1b,Invisible:1b}

#矢のMotionにアマスタのPosを代入
execute as @e[tag=thmsk1ar] run data modify entity @s Motion set from entity @e[tag=thmsk1,limit=1] Pos

#アマスタのキル
kill @e[tag=thmsk1]

#タグ除去
tag @e[tag=thmsk1ar] remove thmsk1