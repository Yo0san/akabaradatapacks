setblock 1053 58 -51 minecraft:campfire[lit=false]
playsound minecraft:block.wood.place master @a 1053.5 58.5 -51.5 10
scoreboard players set 燃やす処理 furnace 1
bossbar set minecraft:fire value 1
kill @e[type=item,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{st:1}}}]