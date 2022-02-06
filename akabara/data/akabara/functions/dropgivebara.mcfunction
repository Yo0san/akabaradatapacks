##main.mcfunctionの赤薔薇ドロップの処理(2・3行目)
give @s poppy{display:{Name:'{"text":"バラ","color":"dark_red","bold":true,"italic":false}',Lore:['{"text":"重要アイテム ※落とさないで","color":"dark_red","bold":true,"italic":false}','{"text":"赤バラだ","color":"dark_red","bold":true,"italic":false}','{"text":"タグにはそのバラ、？ちる時、あなたも？ち果てる","color":"dark_red","bold":true,"italic":false}','{"text":"難しくて、読めない字がある","color":"dark_red","bold":true,"italic":false}']},bara:1} 1
kill @e[type=item,nbt={Item:{id:"minecraft:poppy",Count:1b,tag:{bara:1}}}]
tellraw @s {"text":"\u30d0\u30e9\u3092\u30c9\u30ed\u30c3\u30d7\u3059\u308b\u3053\u3068\u306f\u51fa\u6765\u307e\u305b\u3093\u3002","bold":true,"color":"red"}
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0.0
scoreboard players remove @s dropbara 1