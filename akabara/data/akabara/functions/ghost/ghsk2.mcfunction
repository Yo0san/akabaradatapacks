#サモンさせる
summon item ~ ~1 ~ {Age:3600,PickupDelay:20,Item:{id:"minecraft:painting",Count:1b,tag:{display:{Name:'{"text":"呪いの絵画","color":"black","italic":false}',Lore:['{"text":"取った瞬間死ぬ絵画だ。"}']},gstsk2:1}}}
playsound minecraft:entity.player.attack.nodamage master @s ~ ~ ~ 1 1
clear @s warped_fungus_on_a_stick{ghsk:2}
scoreboard players set @s ghsk2cdst 1