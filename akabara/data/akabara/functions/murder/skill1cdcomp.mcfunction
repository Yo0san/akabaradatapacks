#マーダースキル：威圧のクールダウンコンプ
give @s bone{display:{Name:'{"text":"威圧","italic":false}',Lore:['{"text":"持ちながらSHIFTで使用。","color":"white","italic":false}','{"text":"<スキル> 威圧できそうな骨だ。","color":"white","italic":false}','{"text":"20m以内にいて、最も近いプレイヤーに鈍足をつける。","color":"white","italic":false}']},mdsk:1} 1
playsound minecraft:entity.item.pickup master @s ~ ~ ~ 1 1
scoreboard players reset @s murskill1st
scoreboard players reset @s murskillcd1 