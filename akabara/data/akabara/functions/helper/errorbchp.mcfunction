clear @s
tag @s remove Helper
tellraw @s {"text":"\u30bf\u30a4\u30d7\u4eba\u6570\u4e0a\u9650\u3092\u8d85\u3048\u307e\u3057\u305f","bold":true,"color":"red"}
playsound minecraft:item.shield.block master @s ~ ~ ~ 1 0.0
give @s tripwire_hook{display:{Name:'{"text":"チェストの鍵","italic":false,"underlined":false}',Lore:['{"text":"人間側しか開けれないチェストを開けることができる、特殊な鍵","color":"white","italic":false}']}} 1