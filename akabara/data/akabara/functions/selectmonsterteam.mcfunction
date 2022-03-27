execute unless entity @a[tag=moc] run team join oni @r
team join oni @r[tag=moc]
team join human @a[team=!oni]
execute as @a[team=oni] at @s run attribute @s minecraft:generic.movement_speed base set 0.12
tellraw @a [{"text":"\u4eca\u56de\u306e\u602a\u7269\u306f","bold":true,"color":"red"},{"selector":"@a[team=oni]"},{"text":"\u3067\u3059\uff01","bold":true,"color":"red"}]
tag @a remove notakabara
give @a[team=human] tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1
give @a[team=oni] tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1
scoreboard objectives add akabara dummy {"text":"\u5473\u65b9\u306e\u30d0\u30e9","bold":true,"color":"dark_red"}
scoreboard objectives add bflimittime dummy {"text":"\u5730\u4e0b\u6ede\u5728\u6642\u9593(3600tick\u307e\u3067\u6ede\u5728\u53ef\u80fd)","bold":true,"color":"gray"}
scoreboard objectives setdisplay sidebar.team.white akabara
scoreboard objectives setdisplay sidebar.team.red bflimittime