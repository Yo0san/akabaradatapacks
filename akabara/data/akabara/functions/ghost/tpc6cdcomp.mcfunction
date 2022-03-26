#?FVIP研究室からのこんにちはクールタイムコンプ
scoreboard players set @s tpc6cdst 0
scoreboard players reset @s tpc6cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.5 with warped_fungus_on_a_stick{display:{Name:'{"text":"?F研究室倉庫","color":"gray","italic":false}'},CustomModelData:201,tpc:6} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1