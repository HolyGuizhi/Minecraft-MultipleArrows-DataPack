#Guizhi

# 箭矢數量等級
execute as @a unless score @s amount matches 0.. run scoreboard players set @s amount 1

# 多重箭矢
execute store success score mult_usebow Tmp as @p[tag=mult,scores={ub=1..}] at @s run function multa:initial_set
execute if score mult_usebow Tmp matches 1 as @e[tag=1st,tag=multiarrow,limit=1] at @s run function multa:main
scoreboard players reset @a ub

# 尾跡 爆炸 自動移除
scoreboard players set other_func Tmp 0
execute if score show Tmp matches 1.. run scoreboard players add others_func Tmp 1
execute if score explo Tmp matches 1.. run scoreboard players add others_func Tmp 1
execute if score rmv_inG Tmp matches 1.. run scoreboard players add others_func Tmp 1
execute if score other_func Tmp matches 1.. as @e[tag=multiarrow] at @s run function multa:arrow
