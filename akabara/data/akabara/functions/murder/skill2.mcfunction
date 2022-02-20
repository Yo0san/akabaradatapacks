#遠距離射撃の動作
clear @s tipped_arrow{oska:1}
give @s tipped_arrow{display:{Name:'{"text":"一撃矢","color":"black","italic":false}'},oska:1,CustomPotionEffects:[{Id:7b,Amplifier:50b,Duration:20,ShowParticles:1b}],CustomPotionColor:0} 1
playsound minecraft:entity.zombie.step master @a ~ ~ ~ 1 2
scoreboard players reset @s murskillcd2