#Guizhi(桂枝)

##數值設定
execute store result score @s Tmp2 run scoreboard players get @s amount
scoreboard players set 24 Tmp 24
scoreboard players set -1 Tmp -1

##標記初根箭矢
execute positioned ~ ~1.5 ~ run data modify entity @e[type=arrow,sort=nearest,limit=1] Tags set value ["1st", "multiarrow"]

##建立兩旋轉軸向量
summon area_effect_cloud ^ ^1 ^ {Tags:["axis_v1"],Duration:1}
summon area_effect_cloud ~ ~ ~ {Tags:["axis_v2"],Duration:1}
summon area_effect_cloud ^1 ^ ^ {Tags:["axis_v3"],Duration:1}

execute store result score @s ax run data get entity @e[tag=axis_v1,limit=1] Pos[0] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[0] 1000
scoreboard players operation @s ax -= @s Tmp
execute store result score @s ay run data get entity @e[tag=axis_v1,limit=1] Pos[1] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[1] 1000
scoreboard players operation @s ay -= @s Tmp
execute store result score @s az run data get entity @e[tag=axis_v1,limit=1] Pos[2] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[2] 1000
scoreboard players operation @s az -= @s Tmp

execute store result score @s ax2 run data get entity @e[tag=axis_v3,limit=1] Pos[0] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[0] 1000
scoreboard players operation @s ax2 -= @s Tmp
execute store result score @s ay2 run data get entity @e[tag=axis_v3,limit=1] Pos[1] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[1] 1000
scoreboard players operation @s ay2 -= @s Tmp
execute store result score @s az2 run data get entity @e[tag=axis_v3,limit=1] Pos[2] 1000
execute store result score @s Tmp run data get entity @e[tag=axis_v2,limit=1] Pos[2] 1000
scoreboard players operation @s az2 -= @s Tmp
