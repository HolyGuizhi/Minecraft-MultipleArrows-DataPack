#Guizhi(桂枝)

tellraw @s {"text":"============================================================","color":"gold"}
tellraw @s [{"text":" [多重箭矢] ","color":"gold"},{"text":"  您可以執行以下指令","color":"white"}]
tellraw @s [" "]
tellraw @s [{"text":"     - 將自己設為使用多重箭矢的玩家:","color":"yellow"}]
tellraw @s ["           ",{"text":"/tag @s add mult \n","color":"white"}]
tellraw @s [{"text":"     - 取消自己的多重箭矢功能:","color":"yellow"}]
tellraw @s ["           ",{"text":"/tag @s remove mult \n","color":"white"}]
tellraw @s [{"text":"     - 設定自己每次擊發的箭矢數量等級(0~25)(超過25視同25):","color":"yellow"}]
tellraw @s ["           ",{"text":"/scoreboard players set @s amount <數量等級> \n","color":"white"}]
tellraw @s [{"text":"     - 重置所有設定:","color":"yellow"}]
tellraw @s ["           ",{"text":"/function multa:cmd/reset_all \n","color":"white"}]
tellraw @s [{"text":"     - 設定箭矢是否有尾跡:","color":"yellow"}]
tellraw @s ["           ",{"text":"/function multa:cmd/showparticle \n","color":"white"}]
tellraw @s [{"text":"     - 多重箭矢在落地後是否自動刪除 (前一項有開的話建議打開):","color":"yellow"}]
tellraw @s ["           ",{"text":"/function multa:cmd/auto_remove \n","color":"white"}]
tellraw @s [{"text":"     - 設定多重箭矢落地是否爆炸 (落地會自動刪除):","color":"yellow"}]
tellraw @s ["           ",{"text":"/function multa:cmd/explosion \n","color":"white"}]
tellraw @s [{"text":"     - 移除所有箭矢:","color":"yellow"}]
tellraw @s ["           ",{"text":"/function multa:cmd/remove_arrow \n","color":"white"}]
tellraw @s [" "]
tellraw @s {"text":"============================================================","color":"gold"}
