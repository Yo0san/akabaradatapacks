#赤薔薇をドロップするとその近くの人に1個赤薔薇を与えて、ドロップしたのをキルする。（わんちゃんdistance使って特定のアイテムのみできそう）
execute as @a[scores={dropbara=1..}] at @s run function akabara:dropgivebara
execute as @a[tag=normal,scores={dropnmsk1=1..}] at @s run function akabara:drop/dropnmsk1
execute as @a[tag=normal,scores={dropnmsk2=1..}] at @s run function akabara:drop/dropnmsk2
scoreboard players reset @a[scores={dropnmsk1=1..}] dropnmsk1
scoreboard players reset @a[scores={dropnmsk2=1..}] dropnmsk2
#スキル1 run away!検知
execute as @a[tag=normal,scores={usedskill=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{nmsk:1}}}] at @s run function akabara:normal/skill1 
execute as @a[tag=normal,scores={usedskill=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{nmsk:2}}}] at @s run function akabara:normal/skill2


##ノーマルのスキルクールタイム
execute as @a[scores={nmskcdas=1}] at @s run scoreboard players add @s nmskcd1 1
execute as @a[scores={nmsk2cdas2=1}] at @s run scoreboard players add @s nmskcd2 1

#クールダウン検知
execute as @a[tag=normal,scores={nmskcd1=600}] at @s run function akabara:normal/nmsk1cdconp
execute as @a[tag=normal,scores={nmskcd2=2400}] at @s run function akabara:normal/nmsk2cdconp

#ハートビート
#スキル判定
execute as @a[tag=heartbeat,scores={shift=1..},nbt={SelectedItem:{id:"minecraft:red_glazed_terracotta",Count:1b,tag:{hbsk:1}}}] at @s run scoreboard players add @s aothsetup 1

#アテンション・オブ・ザ・ハートビート
execute as @a[scores={aothsetup=1}] at @s run function akabara:heartbeat/skill1

#宝箱配置
execute if score チェスト更新セットアップ chestloottimest matches 1 run scoreboard players add チェスト更新タイム loottime 1
execute if score チェスト更新タイム loottime matches 3600 run function akabara:lootchest/startlootchest

#B1029 58 -137
execute if entity @e[type=item,x=1029,y=58,z=-137,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{st:1}}}] run function akabara:furnace/stickb
execute if entity @e[type=item,x=1029,y=58,z=-137,distance=..1,nbt={Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{fs:1}}}] if score B燃やす処理 furnace matches 1 run function akabara:furnace/flint_and_steelb
execute if entity @e[type=item,x=1029,y=58,z=-137,distance=..1,nbt={Item:{id:"minecraft:painting",Count:1b,tag:{paint:1}}}] if score B燃やす処理 furnace matches 2 run function akabara:furnace/paintb
#A焼却炉に焚き火を組み立てる動作
execute if entity @e[type=item,x=1053,y=58,z=-51,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{st:1}}}] run function akabara:furnace/stick
#A焼却炉に火をつける動作
execute if entity @e[type=item,x=1053,y=58,z=-51,distance=..1,nbt={Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{fs:1}}}] if score 燃やす処理 furnace matches 1 run function akabara:furnace/flint_and_steel
#A焼却炉に絵画を入れて燃やす動作。
execute if entity @e[type=item,x=1053,y=58,z=-51,distance=..1,nbt={Item:{id:"minecraft:painting",Count:1b,tag:{paint:1}}}] if score 燃やす処理 furnace matches 2 run function akabara:furnace/paint
#残り枚数
execute if score 残り絵画 painting matches 10 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a10","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 9 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a9","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 8 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a8","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 7 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a7","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 6 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a6","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 5 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a5","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 4 run title @a actionbar {"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a4","bold":true,"color":"gray"}
execute if score 残り絵画 painting matches 3 run title @a actionbar ["",{"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a","bold":true,"color":"gray"},{"text":"3","bold":true,"color":"yellow"}]
execute if score 残り絵画 painting matches 2 run title @a actionbar ["",{"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a","bold":true,"color":"gray"},{"text":"2","bold":true,"color":"red"}]
execute if score 残り絵画 painting matches 1 run title @a actionbar ["",{"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a","bold":true,"color":"gray"},{"text":"1","bold":true,"color":"dark_red"}]
execute if score 残り絵画 painting matches 0 run title @a actionbar ["",{"text":"\u2b1b\u6b8b\u308a\u7d75\u753b\u679a\u6570\uff1a","bold":true,"color":"gray"},{"text":"0","bold":true,"color":"black"}]
#水入り花瓶の動作
execute if entity @a[limit=1,nbt={Inventory:[{id:"minecraft:flower_pot",tag:{wp:1}}]}] run function akabara:wp
#薔薇が0になると死ぬ処理
execute as @a[scores={akabara=0}] at @s run function akabara:gameover
#攻撃されたら
execute as @a[scores={kill=1}] at @s run function akabara:attack
#残機上限超える検知
execute as @a[scores={akabara=11..}] at @s run function akabara:overbara
#ウィンドブレイカー監視
execute store result score ウィンドブレイカー監視 wbjmax if entity @a[tag=normal]
#ウィンドブレイカーになる。
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{wbj:1}}]}] at @s if score ウィンドブレイカー監視 wbjmax matches 4.. run function akabara:normal/errorbcwb
execute as @a[nbt={Inventory:[{id:"minecraft:feather",tag:{wbj:1}}]}] at @s unless score ウィンドブレイカー監視 wbjmax matches 4.. run function akabara:normal/yesbecamewb
#タイプ：なし
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",tag:{nonej:1}}]}] at @s run function akabara:none/becamenone
#ヘルパー監視
execute store result score ヘルパー監視 hpjmax if entity @a[tag=Helper]
#ヘルパーになる
execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{hpj:1}}]}] at @s if score ヘルパー監視 hpjmax matches 4.. run function akabara:helper/errorbchp
execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{hpj:1}}]}] at @s unless score ヘルパー監視 hpjmax matches 4.. run function akabara:helper/becamehp
#ヘルパースキル判定
execute as @a[tag=Helper,scores={usedskill=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{hps:1}}}] at @s run function akabara:helper/hpsk1
#ヘルパースキルクールタイム
execute as @a[tag=Helper,scores={hpscdsu=1}] at @s run scoreboard players add @s hpscd1 1
execute as @a[tag=Helper,scores={hpscdsu2=1}] at @s run scoreboard players add @s hpscd2 1
#いもり対策。
execute as @a[team=oni,scores={bftimelimitst1=1}] at @s run scoreboard players add @s bflimittime 1
execute as @a[team=oni,scores={bftimelimitst1=0}] at @s run scoreboard players remove @s[scores={bflimittime=1..}] bflimittime 1
execute as @a[team=oni,scores={bflimittime=3600}] at @s run function akabara:bflimitup
#ヘルパースキルクールダウンコンプ検知
execute as @a[scores={hpscd1=900}] at @s run function akabara:helper/hpsk1cdcomp
execute as @a[scores={hpscd2=1200}] at @s run function akabara:helper/hpsk2cdcomp
#マーダー威圧スキル検知
execute as @a[tag=murder,scores={usedskill=1..},nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{mdsk:1}}}] at @s run function akabara:murder/skill1
#マーダー威圧スキルクールダウン判定
execute as @a[scores={murskill1st=1..}] at @s run scoreboard players add @s murskillcd1 1
execute as @a[scores={murskillcd1=1200..}] at @s run function akabara:murder/skill1cdcomp
#マーダー遠距離射撃スキル検知
execute as @a[scores={murskill2st=1..}] at @s run scoreboard players add @s murskillcd2 1
#遠距離射撃スキルクールダウンコンプ
execute as @a[scores={murskillcd2=1200..}] at @s run function akabara:murder/skill2
#マーダー監視。
execute store result score マーダー監視 murjmax if entity @a[tag=Helper]
#マーダーになる。
execute as @a[nbt={Inventory:[{id:"minecraft:iron_sword",tag:{murj:1}}]}] at @s if score マーダー監視 murjmax matches 4.. run function akabara:murder/errorbcmur
execute as @a[nbt={Inventory:[{id:"minecraft:iron_sword",tag:{murj:1}}]}] at @s unless score マーダー監視 murjmax matches 4.. run function akabara:murder/becamemur
#怪物側なしになる
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",tag:{mnonej:1}}]}] at @s run function akabara:none/becamemnone
execute if score 残り絵画 painting matches 0 run setblock 1028 56 -31 minecraft:air
execute if score 残り絵画 painting matches 0 run setblock 1040 56 -31 minecraft:air
execute if score 残り絵画 painting matches 0 run setblock 1028 56 -31 minecraft:water
execute if score 残り絵画 painting matches 0 run setblock 1040 56 -31 minecraft:water
#マーダーのスキル1の盲目待機タイム
execute as @a[scores={mursk1bilnd=1}] at @s run scoreboard players add @s mursk1bilndti 1
execute as @a[scores={mursk1bilndti=120..}] run function akabara:murder/skill1bl
#怪物側のなしタイプになる。
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",tag:{nonej:1}}]}] at @s run function akabara:none/becamenone
execute as @a[nbt={Inventory:[{id:"minecraft:barrier",tag:{mnonej:1}}]}] at @s run function akabara:none/becamemnone
#ラティマータイプ監視
execute store result score ラティマー監視 rtmtypecheak if entity @a[tag=rtm]
#ラティマータイプになる
#execute as @a[nbt={Inventory:[{id:"minecraft:redstone",Count:1b,tag:{rtmj:1}}]}] at @s if score ラティマー監視 rtxtypecheak matches 4.. run function akabara:rtx/errorrtxj
#execute as @a[nbt={Inventory:[{id:"minecraft:redstone",Count:1b,tag:{rtmj:1}}]}] at @s unless score ラティマー監視 rtxtypecheak matches 4.. run function akabara:rtx/rtxbecame
execute as @a[nbt={Inventory:[{id:"minecraft:redstone",tag:{rtmj:1}}]}] at @s run function akabara:rtx/rtxbecame
#ラティマー電力オーバー
execute as @a[scores={thmcharge=101..}] at @s run function akabara:overvolt
#ラティマースキル1 
execute as @a[tag=rtm,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{thmsk1:1}}},scores={thmcharge=10..}] at @s if score @s usedskill matches 1 run function akabara:rtx/rtmsk1
#ラティマースキル1
execute as @a[scores={thmsk1cdst=1..}] at @s run scoreboard players add @s thmsk1cd 1
#ラティマースキル1クールダウンコンプ
execute as @a[scores={thmsk1cd=60..}] at @s run function akabara:rtx/rtmsk1cdcomp
#ラティマースキル2
execute as @a[scores={thmcharge=15..},tag=rtm,nbt={SelectedItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{rtmsk2:1}}}] at @s if score @s usedskill matches 1 run function akabara:rtx/rtmsk2
execute as @a[scores={thmcharge=15..},tag=rtm,predicate=akabara:shift,nbt={SelectedItem:{id:"minecraft:spider_eye",Count:1b,tag:{rtmsk2:1}}}] at @s run function akabara:rtx/rtmsk2
execute as @a[scores={rtmsk2cdst=1..}] at @s run scoreboard players add @s rtmsk2cd 1
execute as @a[scores={rtmsk2cd=200..}] at @s run function akabara:rtx/rtmsk2cdcomp
#怪物側の移動速度上昇
execute as @a[team=oni] at @s run attribute @s minecraft:generic.movement_speed base set 0.12
#ゴースト 幽体化と具現化/give @p cocoa_beans{display:{Name:'{"text":"【特殊能力】幽体・具現","color":"gray","italic":false}',Lore:['{"text":"幽体と具現化を切り替える事ができる","color":"gray","italic":false}']},CustomModelData:1,yutb:1} 1
execute as @a[tag=ghost,predicate=akabara:shift,nbt={SelectedItem:{id:"minecraft:cocoa_beans",Count:1b,tag:{yutb:1}}}] at @s run scoreboard players add @s ytgc 1
execute if entity @a[scores={ytgc=..100},tag=ghost] at @s run scoreboard players reset @s ytgc
execute as @a[tag=ghost,scores={shift=0}] at @s if entity @s[scores={ytgc=..99}] at @s run scoreboard players reset @s ytgc
execute as @a[tag=ghost,scores={ytgc=100..}] at @s if score @s ytc matches 0 run function akabara:ghost/ytz
execute as @a[tag=ghost,scores={ytgc=100..}] at @s if score @s ytc matches 1 run scoreboard players set @s ytc 2
execute as @a[tag=ghost,scores={ytgc=100..}] at @s if score @s ytc matches 2 run function akabara:ghost/ytz1
execute as @a[tag=ghost,scores={ytgc=1}] at @s run playsound minecraft:block.beacon.activate master @s ~ ~ ~ 1 2
#スキルこんにちは。起動判定
#領主部室、2F粛清部室上、2F談話室奥部室、1F噴水広場前部室、BF醸造台、?F、研究室倉庫
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc1cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:4}}]}] run function akabara:ghost/tpc1
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc2cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:1}}]}] run function akabara:ghost/tpc2
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc3cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:2}}]}] run function akabara:ghost/tpc3
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc4cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:3}}]}] run function akabara:ghost/tpc4
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc5cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:5}}]}] run function akabara:ghost/tpc5
execute as @a[tag=ghost,scores={ghsk1st=1}] at @s if score @s tpc6cdst matches 0 unless entity @s[nbt={Inventory:[{id:"minecraft:warped_fungus_on_a_stick",tag:{tpc:6}}]}] run function akabara:ghost/tpc6
#それぞれスキルクールダウン
execute as @a[scores={tpc1cdst=1}] at @s run scoreboard players add @s tpc1cd 1
execute as @a[scores={tpc1cd=1..599}] at @s run function akabara:ghost/tpc1ki
execute as @a[scores={tpc1cd=600}] at @s run function akabara:ghost/tpc1cdcomp
#領主の部室スキルクールダウン
execute as @a[scores={tpc2cdst=1}] at @s run scoreboard players add @s tpc2cd 1
execute as @a[scores={tpc2cd=1..599}] at @s run function akabara:ghost/tpc2cdki
execute as @a[scores={tpc2cd=600}] at @s run function akabara:ghost/tpc2cdcomp
#2F客人部室からこんにちはクールダウン
execute as @a[scores={tpc3cdst=1}] at @s run scoreboard players add @s tpc3cd 1
execute as @a[scores={tpc3cd=1..599}] at @s run function akabara:ghost/tpc3cdki
execute as @a[scores={tpc3cd=600}] at @s run function akabara:ghost/tpc3cdcomp
#執事の部室からこんにちはクールダウン
execute as @a[scores={tpc4cdst=1}] at @s run scoreboard players add @s tpc4cd 1
execute as @a[scores={tpc4cd=1..599}] at @s run function akabara:ghost/tpc4cdki
execute as @a[scores={tpc4cd=600}] at @s run function akabara:ghost/tpc4cdcomp
#BF醸造室からこんにちはクールダウン
execute as @a[scores={tpc5cdst=1}] at @s run scoreboard players add @s tpc5cd 1
execute as @a[scores={tpc5cd=1..599}] at @s run function akabara:ghost/tpc5cdki
execute as @a[scores={tpc5cd=600}] at @s run function akabara:ghost/tpc5cdcomp
#?階VIP研究室からこんにちはクールダウン
execute as @a[scores={tpc6cdst=1}] at @s run scoreboard players add @s tpc6cd 1
execute as @a[scores={tpc6cd=1..599}] at @s run function akabara:ghost/tpc6cdki
execute as @a[scores={tpc6cd=600}] at @s run function akabara:ghost/tpc6cdcomp
#呪いの絵画を設置give @p warped_fungus_on_a_stick{display:{Name:'{"text":"【スキル】呪いの絵画","color":"black","italic":false}',Lore:['{"text":"取った人間のバラを一切れちぎる絵画を設置する。","color":"white","italic":false}','{"text":"※ただし、怪物がとってしまうと効果がないので注意。","color":"white","bold":true,"italic":false}','{"text":"クールタイム：1分","color":"white","italic":false}']},ghsk:2} 1
execute as @a[nbt={SelectedItem:{tag:{ghsk:2}}},scores={UsedWarpedFungusOnAStick=1..}] at @s run function akabara:ghost/ghsk2
execute as @a[scores={ghsk2cdst=1}] at @s run scoreboard players add @s ghsk2cd 1
execute as @a[scores={ghsk2cd=1200}] at @s run function akabara:ghost/ghsk2cdcomp
#それを手にすると死ぬ
execute as @a[team=oni,nbt={Inventory:[{id:"minecraft:painting",tag:{gstsk2:1}}]}] at @s run clear @s minecraft:painting{gstsk2:1}
execute as @a[team=human,nbt={Inventory:[{id:"minecraft:painting",tag:{gstsk2:1}}]}] at @s run function akabara:ghost/ghsk2p
#ゴーストになる
execute as @a[nbt={Inventory:[{id:"minecraft:paper",tag:{ghic:1}}]}] at @s run function akabara:ghost/becameghost
#玄関のドア開く過程
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] if score 玄関のドアセットアップ aysentdooropenst matches 1 run scoreboard players add 玄関ドア aysentdooropen 1
execute as @a[x=990,y=63,z=-83,distance=..1,team=human,predicate=akabara:shift] if score 玄関のドアセットアップ aysentdooropenst matches 1 run scoreboard players add 玄関ドア aysentdooropen 1
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] if score 玄関のドアセットアップ aysentdooropenst matches 1 unless score 玄関ドア aysentdooropen matches 1 run playsound minecraft:block.anvil.place master @s ~ ~ ~ 1 2
#玄関のドア開くやつ
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 1..600 run title @s times 0 5 0
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches ..19 run title @s title ["",{"text":"|||||||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 20..39 run title @s title ["",{"text":"|"},{"text":"|||||||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 40..59 run title @s title ["",{"text":"||"},{"text":"||||||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 60..79 run title @s title ["",{"text":"|||"},{"text":"|||||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 80..99 run title @s title ["",{"text":"||||"},{"text":"||||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 100..119 run title @s title ["",{"text":"|||||"},{"text":"||||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 120..139 run title @s title ["",{"text":"||||||"},{"text":"|||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 140..159 run title @s title ["",{"text":"|||||||"},{"text":"||||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 160..179 run title @s title ["",{"text":"||||||||"},{"text":"|||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 180..199 run title @s title ["",{"text":"|||||||||"},{"text":"||||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 200..219 run title @s title ["",{"text":"||||||||||"},{"text":"|||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 220..239 run title @s title ["",{"text":"|||||||||||"},{"text":"||||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 240..259 run title @s title ["",{"text":"||||||||||||"},{"text":"|||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 260..279 run title @s title ["",{"text":"|||||||||||||"},{"text":"||||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 280..299 run title @s title ["",{"text":"||||||||||||||"},{"text":"|||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 300..319 run title @s title ["",{"text":"|||||||||||||||"},{"text":"||||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 320..339 run title @s title ["",{"text":"||||||||||||||||"},{"text":"|||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 340..359 run title @s title ["",{"text":"|||||||||||||||||"},{"text":"||||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 360..379 run title @s title ["",{"text":"||||||||||||||||||"},{"text":"|||||||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 380..399 run title @s title ["",{"text":"|||||||||||||||||||"},{"text":"||||||||||","color":"gray"}]
execute if score 玄関ドア aysentdooropen matches 400..419 run playsound minecraft:block.note_block.bell master @a 994.47 63.00 -22.55 2 1
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 400..419 run title @s title ["",{"text":"||||||||||||||||||||"},{"text":"|||||||||","color":"gray"}]
execute if score 玄関ドア aysentdooropen matches 420..439 run playsound minecraft:block.note_block.bell master @a 994.47 63.00 -22.55 2 1
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 420..439 run title @s title ["",{"text":"|||||||||||||||||||||"},{"text":"||||||||","color":"gray"}]
execute if score 玄関ドア aysentdooropen matches 440..459 run playsound minecraft:block.note_block.bell master @a 994.47 63.00 -22.55 2 1
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 440..459 run title @s title ["",{"text":"||||||||||||||||||||||"},{"text":"|||||||","color":"gray"}]
execute if score 玄関ドア aysentdooropen matches 460..479 run playsound minecraft:block.note_block.bell master @a 994.47 63.00 -22.55 2 1
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 480..499 run title @s title ["",{"text":"|||||||||||||||||||||||"},{"text":"||||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 500..519 run title @s title ["",{"text":"||||||||||||||||||||||||"},{"text":"|||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 520..539 run title @s title ["",{"text":"|||||||||||||||||||||||||"},{"text":"||||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 540..559 run title @s title ["",{"text":"||||||||||||||||||||||||||"},{"text":"|||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 560..579 run title @s title ["",{"text":"|||||||||||||||||||||||||||"},{"text":"||","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 580..598 run title @s title ["",{"text":"||||||||||||||||||||||||||||"},{"text":"|","color":"gray"}]
execute as @a[x=994,y=63,z=-23,distance=..1,team=human,predicate=akabara:shift] at @s if score 玄関ドア aysentdooropen matches 599 run title @s title ["",{"text":"|||||||||||||||||||||||||||||"}]
execute if score 玄関ドア aysentdooropen matches 600 run function akabara:furnace/dooropen
#playsound minecraft:block.note_block.bell master @a 994.47 63.00 -22.55 2 1
#execute align xyz positioned ~0.5 ~0.5 ~0.5 run








#窓枠の判定4F行き止まり窓枠
execute if entity @a[x=984.5,y=79.5,z=-28.5,distance=..1,team=human] run fill 984 79 -29 984 80 -29 air
execute unless entity @a[x=984.5,y=79.5,z=-28.5,distance=..1,team=human] run fill 984 79 -29 984 80 -29 minecraft:white_stained_glass_pane
#3FBAR⇒談話室
execute if entity @a[x=1003.5,y=69.5,z=-45.5,distance=..1,team=human] run fill 1003 69 -46 1003 70 -46 air
execute unless entity @a[x=1003.5,y=69.5,z=-45.5,distance=..1,team=human] run fill 1003 69 -46 1003 70 -46 minecraft:white_stained_glass_pane[north=true,south=true]




































#具体化・幽体化のタイトル表示
execute as @a[scores={ytgc=20}] at @s run title @s times 0 20 0
execute as @a[scores={ytgc=20}] at @s run title @s title ["",{"text":"|","color":"white"},{"text":"||||","color":"gray"}]
execute as @a[scores={ytgc=40}] at @s run title @s times 0 20 0
execute as @a[scores={ytgc=40}] at @s run title @s title ["",{"text":"||","color":"white"},{"text":"|||","color":"gray"}]
execute as @a[scores={ytgc=60}] at @s run title @s times 0 20 0
execute as @a[scores={ytgc=60}] at @s run title @s title ["",{"text":"|||","color":"white"},{"text":"||","color":"gray"}]
execute as @a[scores={ytgc=80}] at @s run title @s times 0 20 0
execute as @a[scores={ytgc=80}] at @s run title @s title ["",{"text":"||||","color":"white"},{"text":"|","color":"gray"}]
execute as @a[scores={ytgc=99}] at @s run title @s times 0 20 0
execute as @a[scores={ytgc=99}] at @s run title @s title ["",{"text":"|||||","color":"white"}]





#shift 1の値以上は出せないようにする。
#execute as @a[scores={shift=1..}] at @s run scoreboard players remove @s shift 1
#右クリック検知リセット
scoreboard players remove @a[scores={usedskill=1..}] usedskill 1
scoreboard players set @a UsedWarpedFungusOnAStick 0