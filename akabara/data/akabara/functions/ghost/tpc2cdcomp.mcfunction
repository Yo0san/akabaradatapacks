#クールタイムコンプ
scoreboard players set @s tpc2cdst 0
scoreboard players reset @s tpc2cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.1 with warped_fungus_on_a_stick{display:{Name:'{"text":"領主の部室","color":"gray","italic":false}'},CustomModelData:201,tpc:1} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1