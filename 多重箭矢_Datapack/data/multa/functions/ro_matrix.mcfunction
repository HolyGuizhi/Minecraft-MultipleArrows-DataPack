#Guizhi(桂枝)

##三維旋轉矩陣如下 ,輸入mx,my,mz,ax,ay,az,sin,cos得Mx,My,Mz
# [ m11 m12 m13 ]
# [ m21 m23 m23 ]
# [ m31 m32 m33 ]

## m11(1000倍)
scoreboard players set @s m11 1000
scoreboard players operation @s m11 -= @s cos
scoreboard players operation @s Tmp = @s ax
scoreboard players operation @s Tmp *= @s Tmp
scoreboard players operation @s m11 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m11 /= @s Tmp2
scoreboard players operation @s m11 += @s cos
## m12(1000倍)
scoreboard players set @s m12 1000
scoreboard players operation @s m12 -= @s cos
scoreboard players operation @s Tmp = @s ax
scoreboard players operation @s Tmp2 = @s ay
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m12 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m12 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s az
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m12 -= @s Tmp
## m13(1000倍)
scoreboard players set @s m13 1000
scoreboard players operation @s m13 -= @s cos
scoreboard players operation @s Tmp = @s ax
scoreboard players operation @s Tmp2 = @s az
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m13 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m13 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s ay
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m13 += @s Tmp

## m21(1000倍)
scoreboard players set @s m21 1000
scoreboard players operation @s m21 -= @s cos
scoreboard players operation @s Tmp = @s ax
scoreboard players operation @s Tmp2 = @s ay
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m21 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m21 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s az
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m21 += @s Tmp
## m22(1000倍)
scoreboard players set @s m22 1000
scoreboard players operation @s m22 -= @s cos
scoreboard players operation @s Tmp = @s ay
scoreboard players operation @s Tmp *= @s Tmp
scoreboard players operation @s m22 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m22 /= @s Tmp2
scoreboard players operation @s m22 += @s cos
## m23(1000倍)
scoreboard players set @s m23 1000
scoreboard players operation @s m23 -= @s cos
scoreboard players operation @s Tmp = @s ay
scoreboard players operation @s Tmp2 = @s az
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m23 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m23 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s ax
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m23 -= @s Tmp

## m31(1000倍)
scoreboard players set @s m31 1000
scoreboard players operation @s m31 -= @s cos
scoreboard players operation @s Tmp = @s ax
scoreboard players operation @s Tmp2 = @s az
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m31 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m31 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s ay
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m31 -= @s Tmp
## m32(1000倍)
scoreboard players set @s m32 1000
scoreboard players operation @s m32 -= @s cos
scoreboard players operation @s Tmp = @s ay
scoreboard players operation @s Tmp2 = @s az
scoreboard players operation @s Tmp *= @s Tmp2
scoreboard players operation @s m32 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m32 /= @s Tmp2
scoreboard players operation @s Tmp = @s sin
scoreboard players operation @s Tmp *= @s ax
scoreboard players set @s Tmp2 1000
scoreboard players operation @s Tmp /= @s Tmp2
scoreboard players operation @s m32 += @s Tmp
## m33(1000倍)
scoreboard players set @s m33 1000
scoreboard players operation @s m33 -= @s cos
scoreboard players operation @s Tmp = @s az
scoreboard players operation @s Tmp *= @s Tmp
scoreboard players operation @s m33 *= @s Tmp
scoreboard players set @s Tmp2 1000000
scoreboard players operation @s m33 /= @s Tmp2
scoreboard players operation @s m33 += @s cos

#final動量設定
scoreboard players set @s Tmp 1000
##Mx
scoreboard players operation @s m11 *= @s mx
scoreboard players operation @s m12 *= @s my
scoreboard players operation @s m13 *= @s mz
scoreboard players operation @s Mx = @s m11
scoreboard players operation @s Mx += @s m12
scoreboard players operation @s Mx += @s m13
scoreboard players operation @s Mx /= @s Tmp
##My
scoreboard players operation @s m21 *= @s mx
scoreboard players operation @s m22 *= @s my
scoreboard players operation @s m23 *= @s mz
scoreboard players operation @s My = @s m21
scoreboard players operation @s My += @s m22
scoreboard players operation @s My += @s m23
scoreboard players operation @s My /= @s Tmp
##Mz
scoreboard players operation @s m31 *= @s mx
scoreboard players operation @s m32 *= @s my
scoreboard players operation @s m33 *= @s mz
scoreboard players operation @s Mz = @s m31
scoreboard players operation @s Mz += @s m32
scoreboard players operation @s Mz += @s m33
scoreboard players operation @s Mz /= @s Tmp
