$scoreboard players set @s jkpof.damage.type.now $(id)
tag @s add jkpof_hurt
execute on attacker run function jkpof:state/1/hurt/do
