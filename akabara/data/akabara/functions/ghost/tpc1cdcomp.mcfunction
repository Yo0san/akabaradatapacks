#VIP客人部室のクールダウンコンプ
scoreboard players set @s tpc1cdst 0
scoreboard players reset @s tpc1cd
execute if score @s ghsk1st matches 1 run item replace entity @s inventory.0 with warped_fungus_on_a_stick{display:{Name:'{"text":"1FVIP客人部室","color":"gray","italic":false}'},CustomModelData:201,tpc:4} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1