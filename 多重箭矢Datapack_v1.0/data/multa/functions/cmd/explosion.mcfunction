#Guizhi(桂枝)

execute if score explo Tmp matches 0 run tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 已開啟多重箭矢爆炸 ","color":"white"}]
execute if score explo Tmp matches 0 run scoreboard players set explo Tmp 3

execute if score explo Tmp matches 1 run tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 已關閉多重箭矢爆炸 ","color":"white"}]
execute if score explo Tmp matches 1 run scoreboard players set explo Tmp 0

execute if score explo Tmp matches 3.. run scoreboard players set explo Tmp 1
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup ambient @s
