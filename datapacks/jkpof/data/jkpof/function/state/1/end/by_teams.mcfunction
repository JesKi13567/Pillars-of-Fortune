scoreboard players set #teams jkpof.int 0
execute store success score #teams_1 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=1}, gamemode=survival]
execute store success score #teams_2 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=2}, gamemode=survival]
execute store success score #teams_3 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=3}, gamemode=survival]
execute store success score #teams_4 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=4}, gamemode=survival]
execute store success score #teams_5 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=5}, gamemode=survival]
execute store success score #teams_6 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=6}, gamemode=survival]
execute store success score #teams_7 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=7}, gamemode=survival]
execute store success score #teams_8 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=8}, gamemode=survival]
execute store success score #teams_9 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=9}, gamemode=survival]
execute store success score #teams_10 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=10}, gamemode=survival]
execute store success score #teams_11 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=11}, gamemode=survival]
execute store success score #teams_12 jkpof.int if entity @a[scores={jkpof.state=2, jkpof.team=12}, gamemode=survival]
scoreboard players operation #teams jkpof.int += #teams_1 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_2 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_3 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_4 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_5 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_6 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_7 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_8 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_9 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_10 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_11 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_12 jkpof.int
execute if score #teams jkpof.int matches ..1 run function jkpof:state/1/end/check
