#BF醸造室からのこんにちはクールタイムコンプ
scoreboard players set @s tpc5cdst 0
scoreboard players reset @s tpc5cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.4 with warped_fungus_on_a_stick{display:{Name:'{"text":"BF醸造室","color":"gray","italic":false}'},CustomModelData:201,tpc:5} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1