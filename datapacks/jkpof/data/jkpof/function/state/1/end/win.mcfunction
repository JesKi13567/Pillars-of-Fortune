execute as @a at @s run playsound ui.toast.challenge_complete player @s

tag @p[scores={jkpof.state=2}, gamemode=survival] add jkpof_winner

execute if score #ctrl_team jkpof.int matches 1 run scoreboard players operation #win jkpof.team = @p[tag=jkpof_winner] jkpof.team
execute if score #ctrl_team jkpof.int matches 1 as @a if score @s jkpof.team = #win jkpof.team run tag @s add jkpof_winner

tellraw @a ["", {storage: "jk:pof", nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", nbt: "txt.game.end.win.yes.p1", color: "green"}, {selector: "@a[tag=jkpof_winner]"}, {storage: "jk:pof", nbt: "txt.game.end.win.yes.p2", color: "green"}]

tag @a remove jkpof_winner
