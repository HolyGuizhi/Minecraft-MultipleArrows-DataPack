#Guizhi(桂枝)

#Tags
tag @a remove mult

#刪除箭矢
kill @e[type=arrow,tag=multiarrow]

##重建使用弓(射箭)記分板
scoreboard objectives remove ub
scoreboard objectives add ub minecraft.used:minecraft.bow
scoreboard objectives remove amount
scoreboard objectives add amount dummy

##重建動量計分板
scoreboard objectives remove Mx
scoreboard objectives add Mx dummy
scoreboard objectives remove My
scoreboard objectives add My dummy
scoreboard objectives remove Mz
scoreboard objectives add Mz dummy
scoreboard objectives remove mx
scoreboard objectives add mx dummy
scoreboard objectives remove my
scoreboard objectives add my dummy
scoreboard objectives remove mz
scoreboard objectives add mz dummy

##重建旋轉軸向量記分板
scoreboard objectives remove ax
scoreboard objectives add ax dummy
scoreboard objectives remove ay
scoreboard objectives add ay dummy
scoreboard objectives remove az
scoreboard objectives add az dummy
scoreboard objectives remove ax2
scoreboard objectives add ax2 dummy
scoreboard objectives remove ay2
scoreboard objectives add ay2 dummy
scoreboard objectives remove az2
scoreboard objectives add az2 dummy

##重建旋轉矩陣記分板
scoreboard objectives remove m11
scoreboard objectives add m11 dummy
scoreboard objectives remove m12
scoreboard objectives add m12 dummy
scoreboard objectives remove m13
scoreboard objectives add m13 dummy
scoreboard objectives remove m21
scoreboard objectives add m21 dummy
scoreboard objectives remove m22
scoreboard objectives add m22 dummy
scoreboard objectives remove m23
scoreboard objectives add m23 dummy
scoreboard objectives remove m31
scoreboard objectives add m31 dummy
scoreboard objectives remove m32
scoreboard objectives add m32 dummy
scoreboard objectives remove m33
scoreboard objectives add m33 dummy

##重建三角函數與臨時使用記分板
scoreboard objectives remove angle
scoreboard objectives add angle dummy
scoreboard objectives remove sin
scoreboard objectives add sin dummy
scoreboard objectives remove cos
scoreboard objectives add cos dummy
scoreboard objectives remove Tmp
scoreboard objectives add Tmp dummy
scoreboard objectives remove Tmp2
scoreboard objectives add Tmp2 dummy

##設定數值
scoreboard players set show Tmp 0
scoreboard players set explo Tmp 0
scoreboard players set rmv_inG Tmp 0

##輸出
tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 已完成重置！ ","color":"yellow"}]
execute as @a at @s run playsound entity.player.levelup ambient @s
