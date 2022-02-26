#赤薔薇をドロップするとその近くの人に1個赤薔薇を与えて、ドロップしたのをキルする。（わんちゃんdistance使って特定のアイテムのみできそう）
execute as @a[scores={dropbara=1..}] at @s run function akabara:dropgivebara
execute as @a[tag=normal,scores={dropnmsk1=1..}] at @s run function akabara:drop/dropnmsk1
execute as @a[tag=normal,scores={dropnmsk2=1..}] at @s run function akabara:drop/dropnmsk2
scoreboard players reset @a[scores={dropnmsk1=1..}] dropnmsk1
scoreboard players reset @a[scores={dropnmsk2=1..}] dropnmsk2
#スキル1 run away!検知
execute as @a[tag=normal,scores={shift=1..},nbt={SelectedItem:{id:"minecraft:feather",Count:1b,tag:{nmsk:1}}}] at @s run function akabara:normal/skill1 
execute as @a[tag=normal,scores={shift=1..},nbt={SelectedItem:{id:"minecraft:blaze_rod",Count:1b,tag:{nmsk:2}}}] at @s run function akabara:normal/skill2


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

#焼却炉に焚き火を組み立てる動作
execute if entity @e[type=item,x=1053,y=58,z=-51,distance=..1,nbt={Item:{id:"minecraft:stick",Count:1b,tag:{st:1}}}] run function akabara:furnace/stick
#焼却炉に火をつける動作
execute if entity @e[type=item,x=1053,y=58,z=-51,distance=..1,nbt={Item:{id:"minecraft:flint_and_steel",Count:1b,tag:{fs:1}}}] if score 燃やす処理 furnace matches 1 run function akabara:furnace/flint_and_steel
#焼却炉に絵画を入れて燃やす動作。
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
execute as @a[tag=Helper,scores={shift=1..},nbt={SelectedItem:{id:"minecraft:potion",Count:1b,tag:{hps:1}}}] at @s run function akabara:helper/hpsk1
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
execute as @a[tag=murder,scores={shift=1..},nbt={SelectedItem:{id:"minecraft:bone",Count:1b,tag:{mdsk:1}}}] at @s run function akabara:murder/skill1
#マーダー威圧スキルクールダウン判定
execute as @a[scores={murskill1st=1..}] at @s run scoreboard players add @s murskillcd1 1
execute as @a[scores={murskillcd1=900}] at @s run function akabara:murder/skill1cdcomp
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
execute as @a[tag=rtm,predicate=akabara:shift,nbt={SelectedItem:{id:"minecraft:arrow",Count:1b,tag:{thmsk1:1}}},scores={thmcharge=5..}] at @s run function akabara:rtx/rtmsk1
#ラティマースキル1
execute as @a[scores={thmsk1cdst=1..}] at @s run scoreboard players add @s thmsk1cd 1
#ラティマースキル1クールダウンコンプ
execute as @a[scores={thmsk1cd=60..}] at @s run function akabara:rtx/rtmsk1cdcomp
#ラティマースキル2
execute as @a[scores={thmcharge=15..},tag=rtm,predicate=akabara:shift,nbt={SelectedItem:{id:"minecraft:spider_eye",Count:1b,tag:{rtmsk2:1}}}] at @s run function akabara:rtx/rtmsk2
execute as @a[scores={rtmsk2spo1=1}] at @s run scoreboard players add @s rtmsk2spopy1 1
execute as @a[scores={rtmsk2spopy1=200..}] at @s run function akabara:rtx/rtnsk2_2
execute as @a[scores={rtmsk2cdst=1..}] at @s run scoreboard players add @s rtmsk2cd 1
execute as @a[scores={rtmsk2cd=100..}] at @s run function akabara:rtx/rtmsk2cdcomp
#怪物側の移動速度上昇
effect give @a[team=oni] speed 1 0 true
#炉の状態のボスバー
execute if score 燃やす処理 furnace matches 1 run bossbar set minecraft:fire value 1
execute if score 燃やす処理 furnace matches 2 run bossbar set minecraft:fire value 2
execute if score 燃やす処理 furnace matches 3 run bossbar set minecraft:fire value 0






#shift 1の値以上は出せないようにする。
#execute as @a[scores={shift=1..}] at @s run scoreboard players remove @s shift 1
