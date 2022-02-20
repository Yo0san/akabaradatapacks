function akabara:rng/get
execute if score @s rng matches ..50 run function akabara:b1f/roomrngasr1
execute if entity @s[team=!oni] if score @s rng matches 51..100 run function akabara:b1f/roomrngasr5