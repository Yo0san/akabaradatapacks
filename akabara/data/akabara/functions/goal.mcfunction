#ゴール処理
gamemode spectator @s
playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~ 1 1
tag @s add goal
title @s times 20 100 20
title @s title {"text":"\u8131\u51fa\u6210\u529f\uff01"}
tellraw @s [{"selector":"@s"},{"text":"\u304c\u8131\u51fa\u3057\u307e\u3057\u305f\u3002","color":"aqua"}]