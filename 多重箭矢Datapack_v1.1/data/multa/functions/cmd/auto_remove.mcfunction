#Guizhi

execute if score rmv_inG Tmp matches 0 run tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 已開啟自動刪除箭矢 ","color":"white"}]
execute if score rmv_inG Tmp matches 0 run scoreboard players set rmv_inG Tmp 3

execute if score rmv_inG Tmp matches 1 run tellraw @a [{"text":" [多重箭矢] ","color":"gold"},{"text":" 已關閉自動刪除箭矢 ","color":"white"}]
execute if score rmv_inG Tmp matches 1 run scoreboard players set rmv_inG Tmp 0

execute if score rmv_inG Tmp matches 3.. run scoreboard players set rmv_inG Tmp 1
execute as @a at @s run playsound minecraft:entity.experience_orb.pickup ambient @s
