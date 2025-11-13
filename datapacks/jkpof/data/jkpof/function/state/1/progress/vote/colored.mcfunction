scoreboard players add #vote_show_color jkpof.int 1
execute if score #vote_show_color jkpof.int matches 2.. run scoreboard players set #vote_show_color jkpof.int 0
$execute if score #vote_show_color jkpof.int matches 0 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_vote_show", "$(id)"], CustomName: {text: "[$(name)] ", color: "white"}}
$execute if score #vote_show_color jkpof.int matches 1 run summon marker 0 0 0 {Tags: ["jkpof", "jkpof_vote_show", "$(id)"], CustomName: {text: "[$(name)] ", color: "green"}}
