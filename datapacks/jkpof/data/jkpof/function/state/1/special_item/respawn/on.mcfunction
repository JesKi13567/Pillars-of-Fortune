gamemode survival @s
attribute @s gravity base reset
attribute @s scale base reset
execute if score #event_kid_mode jkpof.int matches 1 run function jkpof:state/1/progress/event/14_kid_mode/random/0
effect give @s weakness 10
effect give @s nausea 10
scoreboard players reset @s jkpof.death_note.cd
scoreboard players reset @s jkpof.gravity
scoreboard players reset @s jkpof.creative
scoreboard players add @s jkpof.lives 1
scoreboard players set @s jkpof.state 2
scoreboard players operation #merged jkpof.team = @s jkpof.team
execute as @a[scores={jkpof.state=2}] if score @s jkpof.team = #merged jkpof.team run tag @s add jkpof_merged
execute unless score #event_betrayal_hour.status jkpof.int matches 1 as @a[scores={jkpof.state=2}] if score @s jkpof.team = #merged jkpof.team run function jkpof:state/0/player/team/join
execute if score #event_betrayal_hour.status jkpof.int matches 1 if score #respawn.type jkpof.int matches 0 run team join jkpof.allies @s
execute if score #event_betrayal_hour.status jkpof.int matches 1 if score #respawn.type jkpof.int matches 1 run team join jkpof.traitor @s
execute if score #event_plus_10 jkpof.int matches 1 run tellraw @s[team=jkpof.traitor] [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.betrayal_hour.self", color: "gold"}]
execute unless score #test_mode jkpof.int matches 1 run scoreboard players add @s jkpof.stats.respawn 1
