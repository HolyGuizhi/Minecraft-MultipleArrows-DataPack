#Guizhi(桂枝)

##取得第一支箭矢基本資料
function multa:getdata

##修改data
data modify entity @s pickup set value 0
data modify entity @s PierceLevel set value 8

##召喚其他箭矢
execute as @p[scores={ub=1..}] at @s positioned ~ ~1.6 ~ run function multa:main/summon

##設定兩隻箭矢之各數值
execute as @e[tag=2nd,limit=1] at @s run function multa:main/2nd
execute as @e[tag=3rd,limit=1] at @s run function multa:main/3rd
execute as @e[tag=4th,limit=1] at @s run function multa:main/4th
execute as @e[tag=5th,limit=1] at @s run function multa:main/5th
execute as @e[tag=6th,limit=1] at @s run function multa:main/6th
execute as @e[tag=7th,limit=1] at @s run function multa:main/7th
execute as @e[tag=extra] at @s run function multa:main/extra

##收尾
tag @s remove 1st
