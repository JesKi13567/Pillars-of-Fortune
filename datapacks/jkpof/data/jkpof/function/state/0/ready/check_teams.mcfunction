scoreboard players set #teams jkpof.int 0
execute store success score #teams_1 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=1}]
execute store success score #teams_2 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=2}]
execute store success score #teams_3 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=3}]
execute store success score #teams_4 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=4}]
execute store success score #teams_5 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=5}]
execute store success score #teams_6 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=6}]
execute store success score #teams_7 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=7}]
execute store success score #teams_8 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=8}]
execute store success score #teams_9 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=9}]
execute store success score #teams_10 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=10}]
execute store success score #teams_11 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=11}]
execute store success score #teams_12 jkpof.int if entity @a[scores={jkpof.state=1, jkpof.team=12}]
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
execute if score #teams jkpof.int matches 2.. run scoreboard players set #start_flag jkpof.int 1
data modify entity @e[type=text_display, tag=jkpof_display_players_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.current.teams", color: "aqua"}, {score: {name: "#teams", objective: "jkpof.int"}, color: "gold"}]
