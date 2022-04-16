#玄関前tpクールタイムコンプ
item replace entity @s inventory.0 with feather{display:{Name:'{"text":"玄関前","italic":false}'},CustomModelData:1,otp:1} 1
playsound minecraft:entity.glow_item_frame.add_item master @s ~ ~ ~ 1 2
scoreboard players reset @s otp1cdst
scoreboard players reset @s otp1cd 