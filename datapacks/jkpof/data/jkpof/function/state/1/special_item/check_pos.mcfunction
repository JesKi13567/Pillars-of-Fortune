execute store result score @s jkpof.X run data get entity @s Pos[0]
execute store result score @s jkpof.Z run data get entity @s Pos[2]
execute store result score @s jkpof.Y run data get entity @s Pos[1]
execute unless score @s jkpof.X matches -32..32 run kill @s
execute unless score @s jkpof.Z matches -32..32 run kill @s
execute unless score @s jkpof.Y matches ..124 run kill @s
execute unless block ~ ~ ~ #replaceable run kill @s
