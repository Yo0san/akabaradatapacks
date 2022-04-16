#玄関前tp
#give @p feather{display:{Name:'{"text":"玄関前","italic":false}'},CustomModelData:1,otp:1} 1
item replace entity @s inventory.0 with feather{display:{Name:'{"text":"クールタイム...","color":"red","italic":false}'}} 1
execute in minecraft:overworld run tp @s 1001.52 63.00 -23.46 1213.37 0.18
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
scoreboard players set @s otp1cdst 1