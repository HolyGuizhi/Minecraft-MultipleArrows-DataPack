#Guizhi(桂枝)

#刪除箭矢
kill @e[type=arrow,tag=multiarrow]

##建立使用弓(射箭)記分板
scoreboard objectives remove ub
scoreboard objectives add ub minecraft.used:minecraft.bow
scoreboard objectives add amount dummy

##建立動量計分板
scoreboard objectives add Mx dummy
scoreboard objectives add My dummy
scoreboard objectives add Mz dummy
scoreboard objectives add mx dummy
scoreboard objectives add my dummy
scoreboard objectives add mz dummy

##建立旋轉軸向量記分板
scoreboard objectives add ax dummy
scoreboard objectives add ay dummy
scoreboard objectives add az dummy
scoreboard objectives add ax2 dummy
scoreboard objectives add ay2 dummy
scoreboard objectives add az2 dummy

##建立旋轉矩陣記分板
scoreboard objectives add m11 dummy
scoreboard objectives add m12 dummy
scoreboard objectives add m13 dummy
scoreboard objectives add m21 dummy
scoreboard objectives add m22 dummy
scoreboard objectives add m23 dummy
scoreboard objectives add m31 dummy
scoreboard objectives add m32 dummy
scoreboard objectives add m33 dummy

##建立三角函數與臨時使用記分板
scoreboard objectives add angle dummy
scoreboard objectives add sin dummy
scoreboard objectives add cos dummy
scoreboard objectives add Tmp dummy
scoreboard objectives add Tmp2 dummy

##設定數值
scoreboard players set show Tmp 0
scoreboard players set rmv_inG Tmp 0

##載入完成輸出
title @a title {"text":"- 載入成功! -","color":"gold"}
tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 指令包設定已完成!!! 請輸入 ","color":"yellow"},{"text":"\" /function multa:cmd/info \" ","color":"white"},{"text":"了解詳情","color":"yellow"}]
execute as @a at @s run playsound entity.player.levelup ambient @s
