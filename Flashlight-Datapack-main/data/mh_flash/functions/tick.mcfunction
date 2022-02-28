### 常時実行function

# 右クリック時の処理
  execute as @a at @s if score @s mh.right_click matches 1.. run function mh_flash:switch
# 懐中電灯を手に持っていて かつ mh.switchスコア=1 → 光を出す
  execute as @a at @s if predicate mh_flash:flashlight_on run function mh_flash:light/summon
# 光源AECとして光源(light_block)を設置/撤去
  execute as @e[type=area_effect_cloud,tag=Light] at @s run function mh_flash:light/_