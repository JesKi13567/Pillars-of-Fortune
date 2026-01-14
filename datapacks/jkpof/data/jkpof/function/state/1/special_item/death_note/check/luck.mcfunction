execute store result score #death_note.luck jkpof.int run random value 1..100
$execute unless score #death_note.luck jkpof.int matches ..$(chance) run scoreboard players set #death_note.fail jkpof.int 2

execute if score #death_note.fail jkpof.int matches 0 run function jkpof:state/1/special_item/death_note/check/title
