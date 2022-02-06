execute in minecraft:overworld run tp @s 987.64 78.00 -26.02 1169.96 0.78
tellraw @s ["",{"text":"\u5730\u4e0b\u6ede\u5728\u6642\u9593\u306e\u4e0a\u9650\u3092\u8d85\u3048\u305f\u3093\u3067\u3001\u5f37\u5236\u7684\u306b\u30014F\u3078\u3068tp\u3057\u307e\u3057\u305f\u3002\u3044\u3082\u3063\u3066\u308b\u5834\u5408\u306f\u3001","color":"red"},{"text":"\u3044\u3082\u308a\u306f\u3084\u3081\u3088\u3046\uff01","bold":true,"color":"red"}]
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0.0
scoreboard players reset @s bftimelimitst1
scoreboard players reset @s bflimittime