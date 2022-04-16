#地下牢獄tp
#give @p feather{display:{Name:'{"text":"地下牢獄"}'},CustomModelData:3,otp:3} 1
item replace entity @s inventory.2 with feather{display:{Name:'{"text":"クールタイム...","color":"red","italic":false}'}} 1
execute in minecraft:overworld run tp @s 1038.56 57.00 -30.45 2340.54 1.44
playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 1
scoreboard players set @s otp3cdst 1