#4F正面階段
#give @p feather{display:{Name:'{"text":"4F正面階段","italic":false}'},CustomModelData:2,otp:2} 1
item replace entity @s inventory.1 with feather{display:{Name:'{"text":"クールタイム...","color":"red","italic":false}'}} 1
execute in minecraft:overworld run tp @s 1007.54 78.00 -24.45 -225.99 0.61
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
scoreboard players set @s otp2cdst 1