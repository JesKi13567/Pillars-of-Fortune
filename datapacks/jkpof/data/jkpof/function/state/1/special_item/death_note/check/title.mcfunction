data modify storage jk:pof data.death_note.title set from entity @s SelectedItem.components."minecraft:written_book_content".title.raw
execute store success score #death_note.fail jkpof.int run data modify storage jk:pof data.death_note.title set value "DEATH NOTE"

execute if score #death_note.fail jkpof.int matches 0 run function jkpof:state/1/special_item/death_note/check/content
