setblock 1053 58 -51 campfire[lit=true]
playsound minecraft:item.flintandsteel.use master @a 1053.5 58.5 51.5 10
playsound minecraft:entity.item.break master @a 1053.5 58.5 -51.5 10
scoreboard players set 燃やす処理 furnace 2
bossbar set minecraft:fire value 2
kill @e[type=item,nbt={Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{fs:1}}}]