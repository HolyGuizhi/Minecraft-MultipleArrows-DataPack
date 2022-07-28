#Guizhi(桂枝)

##玩家相關
execute as @a unless score @s amount matches 0.. run scoreboard players set @s amount 1
execute as @a[tag=mult,scores={ub=1..}] at @s run function multa:initial_set

##執行主要部分
execute as @e[tag=1st,tag=multiarrow,limit=1] at @s run function multa:main

##RESET
scoreboard players reset @a ub

##粒子效果
execute as @e[tag=multiarrow] at @s run function multa:arrow
