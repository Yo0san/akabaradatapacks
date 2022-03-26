#2F客人部室からのこんにちはクールタイムコンプ
scoreboard players set @s tpc3cdst 0
scoreboard players reset @s tpc3cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.2 with warped_fungus_on_a_stick{display:{Name:'{"text":"2F客人部室","color":"gray","italic":false}'},CustomModelData:201,tpc:2} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1