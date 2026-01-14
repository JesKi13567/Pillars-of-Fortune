data modify storage jk:pof data.death_note.name.id set from entity @s SelectedItem.components."minecraft:written_book_content".pages[0].raw
data modify storage jk:pof data.death_note.name.1st set string storage jk:pof data.death_note.name.id 0 1
execute store success score #death_note.fail_ jkpof.int run data modify storage jk:pof data.death_note.name.1st set value "!"
execute if score #death_note.fail_ jkpof.int matches 0 run scoreboard players set #death_note.fail jkpof.int 1

execute if score #death_note.fail jkpof.int matches 0 run function jkpof:state/1/special_item/death_note/check/name with storage jk:pof data.death_note.name
