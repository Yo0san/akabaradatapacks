execute unless entity @a[tag=moc] run tellraw @a {"text":"\u7acb\u5019\u88dc\u8005\u306f\u3044\u306a\u3044\uff96\uff69","bold":true,"color":"dark_red"}
team join oni @r[tag=moc]
team join human @a[team=!oni]
tellraw @a [{"text":"\u4eca\u56de\u306e\u602a\u7269\u306f","bold":true,"color":"red"},{"selector":"@a[team=oni]"},{"text":"\u3067\u3059\uff01","bold":true,"color":"red"}]
tag @a remove notakabara
give @a[team=human] tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1
give @a[team=oni] tripwire_hook{display:{Name:'{"text":"怪物側チェストの鍵","italic":false}',Lore:['{"text":"怪物側しか開けれないチェストを開けれる、特殊な鍵だ。","color":"white","italic":false}']}} 1