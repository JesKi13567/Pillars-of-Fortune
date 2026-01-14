execute store result score #players jkpof.int if entity @a[scores={jkpof.state=1}]
execute if score #players jkpof.int matches 2.. run scoreboard players set #start_flag jkpof.int 1
data modify entity @e[type=text_display, tag=jkpof_display_players_count, limit=1] text set value [{storage: "jk:pof", nbt: "txt.lobby.play_tip.current.players", color: "aqua"}, {score: {name: "#players", objective: "jkpof.int"}, color: "gold"}]
