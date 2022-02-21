scoreboard players remove @s akabara 1
clear @s minecraft:poppy{bara:1} 1
clear @s stick{st:1}
clear @s[scores={kill=1}] minecraft:painting{paint:1}
clear @s[scores={kill=1}] minecraft:flint_and_steel{fs:1}
clear @s[scores={kill=1}] potion{potion:1}
clear @s[scores={kill=1}] splash_potion{potion:2}
function akabara:helper/hpsk2
tellraw @a [{"selector":"@s"},{"text":"は"},{"selector":"@a[team=oni,limit=1]"},{"text":"にバラを一切れちぎられた"}]
scoreboard players remove @s kill 1