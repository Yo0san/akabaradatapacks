### 各光源AECとしての常時実行function

# 光源設置
  execute unless entity @s[tag=InWater] run setblock ~ ~ ~ light[level=8]
  execute if entity @s[tag=InWater] run setblock ~ ~ ~ light[level=8,waterlogged=true]
# 光源撤去
  execute if data entity @s {Age:1} run function mh_flash:light/remove