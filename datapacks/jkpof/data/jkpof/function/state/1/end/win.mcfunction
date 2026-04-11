playsound ui.toast.challenge_complete block @a 0 1000000 0 10000000

tag @a[limit=1, scores={jkpof.state=2}] add jkpof_winner

execute unless score #event_betrayal_hour.status jkpof.int matches 1 if score #ctrl_team jkpof.int matches 1..2 run scoreboard players operation #win jkpof.team = @a[limit=1, tag=jkpof_winner] jkpof.team
execute unless score #event_betrayal_hour.status jkpof.int matches 1 if score #ctrl_team jkpof.int matches 1..2 as @a if score @s jkpof.team = #win jkpof.team run tag @s add jkpof_winner
execute if score #event_betrayal_hour.status jkpof.int matches 1 if entity @a[limit=1, tag=jkpof_winner, team=jkpof.allies] run tag @a[team=jkpof.allies] add jkpof_winner

tellraw @a ["", {storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.game.end.win.yes.p1", color: "green"}, {selector: "@a[tag=jkpof_winner]"}, {storage: "jk:pof", interpret: true, nbt: "txt.game.end.win.yes.p2", color: "green"}]

tag @a remove jkpof_winner
