playsound minecraft:entity.player.splash master @s ~ ~ ~ 1 1
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~ 1 1
tellraw @s {"text":"\u30d0\u30e9\u3092\u6d3b\u304b\u3057\u305f\uff01+1\u56de\u5fa9\uff01","bold":true,"color":"aqua"}
give @s poppy{display:{Name:'{"text":"バラ","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"重要アイテム ※落とさないで","color":"dark_red","bold":true,"italic":false}','{"text":"赤バラだ","color":"dark_red","bold":true,"italic":false}','{"text":"タグにはそのバラ、？ちる時、あなたも？ち果てる","color":"dark_red","bold":true,"italic":false}','{"text":"難しくて、読めない字がある","color":"dark_red","bold":true,"italic":false}']},bara:1} 1
clear @s flower_pot{wp:1} 1
scoreboard players add @s akabara 1