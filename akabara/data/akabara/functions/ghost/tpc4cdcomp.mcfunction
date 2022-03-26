#執事の部室からのこんにちはクールタイムコンプ
scoreboard players set @s tpc4cdst 0
scoreboard players reset @s tpc4cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.3 with warped_fungus_on_a_stick{display:{Name:'{"text":"執事の部室","color":"gray","italic":false}'},CustomModelData:201,tpc:3} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1