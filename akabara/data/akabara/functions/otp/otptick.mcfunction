#設定オン時常時実行
execute as @a[team=oni,scores={otpslp=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:feather",tag:{otp:1}}]}] unless score @s otp1cdst matches 1 run function akabara:otp/otp1
execute as @a[team=oni,scores={otpslp=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:feather",tag:{otp:2}}]}] unless score @s otp2cdst matches 1 run function akabara:otp/otp2
execute as @a[team=oni,scores={otpslp=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:feather",tag:{otp:3}}]}] unless score @s otp3cdst matches 1 run function akabara:otp/otp3
execute as @a[team=oni,scores={otpslp=1}] at @s unless entity @s[nbt={Inventory:[{id:"minecraft:feather",tag:{otp:4}}]}]