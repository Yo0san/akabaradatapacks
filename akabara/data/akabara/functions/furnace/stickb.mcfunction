setblock 1029 58 -137 minecraft:soul_campfire[lit=false]
playsound minecraft:block.wood.place master @a 1029.5 58.5 -137.5 3
scoreboard players set B燃やす処理 furnace 1
bossbar set minecraft:fire value 1
kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{st:1}}}]