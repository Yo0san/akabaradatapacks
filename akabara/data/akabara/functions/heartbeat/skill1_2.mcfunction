scoreboard players add @s aothskill1 1
execute as @a[scores={aothskill1=1}] at @s run playsound item.book.put master @a[team=!oni,distance=15]
execute as @a[scores={aothskill1=20}] at @s run playsound item.book.put master @a[team=!oni,distance=15]
execute as @a[scores={aothskill1=40}] at @s run playsound item.book.put master @a[team=!oni,distance=15]
execute as @a[scores={aothskill1=40}] at @s run scoreboard players reset @s aothsetup
execute as @a[scores={aothskill1=40}] at @s run scoreboard players reset @s aothskill1
