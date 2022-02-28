# 光源を置く用のAECを召喚
  execute positioned ~ ~1.62 ~ align xyz if block ~ ~ ~ #mh_flash:air run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light"]}
  execute positioned ~ ~1.62 ~ align xyz if block ~ ~ ~ light[waterlogged=false] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light"]}
  execute positioned ~ ~1.62 ~ align xyz if block ~ ~ ~ water run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light","InWater"]}
  execute positioned ~ ~1.62 ~ align xyz if block ~ ~ ~ light[waterlogged=true] run summon area_effect_cloud ~ ~ ~ {Duration:2,Tags:["Light","InWater"]}
# 再帰
  execute if entity @s[distance=..7] positioned ^ ^ ^1 run function mh_flash:light/summon