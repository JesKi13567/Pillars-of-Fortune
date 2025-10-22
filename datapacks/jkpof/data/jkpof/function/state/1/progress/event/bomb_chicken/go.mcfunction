scoreboard players remove @s jkpof.int 1
execute unless score @s jkpof.int matches 1.. run summon tnt ~ ~ ~ {fuse: 110}
scoreboard players set @s[scores={jkpof.int=..0}] jkpof.int 12
tp @s ^ ^ ^.5
execute if score #event_time jkpof.int matches 0 run kill @s
