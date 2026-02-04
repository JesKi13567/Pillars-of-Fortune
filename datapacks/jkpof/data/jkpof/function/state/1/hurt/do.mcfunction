advancement revoke @s only jkpof:hurt/do
scoreboard players operation @a[tag=jkpof_hurt] jkpof.damage.source.now = @s jkpof.id
execute as @a[tag=jkpof_hurt] run function jkpof:state/1/hurt/sub/record
tag @a remove jkpof_hurt
