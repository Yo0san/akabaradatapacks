#バラの数0になった時の処理
gamemode spectator @s
playsound minecraft:block.grass.break master @s ~ ~ ~ 1 1
title @s times 20 100 20
title @s subtitle {"text":"\u89b3\u6226\u8005\u306b\u306a\u3063\u3066\u3001\u64ae\u308c\u9ad8\u3092\u63a2\u3057\u307e\u3057\u3087\u3046\uff01","bold":true,"color":"red"}
title @s title {"text":"\u3042\u306a\u305f\u306f\u673d\u3061\u679c\u3066\u305f","bold":true,"color":"red"}
tellraw @a [{"selector":"@s"},{"text":"は"},{"text":"朽ち果てた"}]
scoreboard players set @s akabara -1