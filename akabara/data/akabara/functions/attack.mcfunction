effect give @s minecraft:speed 2 2
effect give @a[team=oni,scores={onidame=1..}] minecraft:weakness 3 255 true
scoreboard players remove @s akabara 1
clear @s minecraft:poppy{bara:1} 1
clear @s stick{st:1}
clear @s minecraft:painting{paint:1}
clear @s minecraft:flint_and_steel{fs:1}
clear @s potion{potion:1}
clear @s splash_potion{potion:2}
function akabara:helper/hpsk2
tellraw @a [{"selector":"@s"},{"text":"はバラを一切れちぎられた"}]
#鬼ダメスコアリセット
scoreboard players reset @a[scores={onidame=1..}] onidame
advancement revoke @s only akabara:attackakabara
scoreboard players reset @a kill