#Guizhi

##尾跡
execute if score show Tmp matches 1.. run particle dust 0 1 1 1 ~ ~ ~ 0 0 0 0 1 force @a

##爆炸
execute if score explo Tmp matches 1.. if entity @s[nbt={inGround:1b}] run summon tnt ~ ~ ~
execute if score explo Tmp matches 1.. run kill @s[nbt={inGround:1b}]

##落地移除
execute if score rmv_inG Tmp matches 1.. run kill @s[nbt={inGround:1b}]
