scoreboard players set #teams jkpof.int 0
execute store success score #teams_1 jkpof.int if entity @a[scores={jkpof.state=2}, team=jkpof.traitor]
execute store success score #teams_2 jkpof.int if entity @a[scores={jkpof.state=2}, team=jkpof.allies]
scoreboard players operation #teams jkpof.int += #teams_1 jkpof.int
scoreboard players operation #teams jkpof.int += #teams_2 jkpof.int
execute if score #teams jkpof.int matches ..1 run function jkpof:state/1/end/check
