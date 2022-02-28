# mh.switchスコア1→0、0→1
  scoreboard players add @s mh.switch 1
  execute if score @s mh.switch matches 2.. run scoreboard players set @s mh.switch 0
# 懐中電灯のスイッチ音
  playsound minecraft:block.dispenser.fail master @s ~ ~ ~ 1 1.3
# リセット
  scoreboard players reset @s mh.right_click