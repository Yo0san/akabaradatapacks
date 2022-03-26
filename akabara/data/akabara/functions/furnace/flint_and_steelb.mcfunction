setblock 1029 58 -137 minecraft:soul_campfire[lit=true]
playsound minecraft:item.flintandsteel.use master @a 1029.5 58.5 -137.5 3
playsound minecraft:entity.item.break master @a 1029.5 58.5 -137.5 3
scoreboard players set B燃やす処理 furnace 2
bossbar set minecraft:fire value 2
kill @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{fs:1}}}]