scoreboard players add #vote_show_color jkpof.int 1
execute if score #vote_show_color jkpof.int matches 2.. run scoreboard players set #vote_show_color jkpof.int 0
$summon marker 0 0 0 {Tags: ["jkpof", "jkpof_vote_show", "$(id)"]}
$execute if score #vote_show_color jkpof.int matches 0 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value ["[", {storage: "jk:pof", nbt: "txt.event.$(name).name"}, "] "]
$execute if score #vote_show_color jkpof.int matches 1 run data modify entity @e[type=text_display, tag=jkpof_display_text, limit=1] text set value [{text: "[", color: "green"}, {storage: "jk:pof", nbt: "txt.event.$(name).name"}, "] "]
$data modify entity @e[type=marker, tag=jkpof_vote_show, tag=$(id), limit=1] CustomName set from entity @e[type=text_display, tag=jkpof_display_text, limit=1] text
