execute if score #ctrl_item_player jkpof.int matches 0 store result score @s jkpof.item.color run random value 1..8

$execute if score @s jkpof.item.color matches 1 run give @s goat_horn[instrument="admire_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 2 run give @s goat_horn[instrument="call_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 3 run give @s goat_horn[instrument="dream_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 4 run give @s goat_horn[instrument="feel_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 5 run give @s goat_horn[instrument="ponder_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 6 run give @s goat_horn[instrument="seek_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 7 run give @s goat_horn[instrument="sing_goat_horn", max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 8 run give @s goat_horn[instrument="yearn_goat_horn", max_stack_size=64] $(n)
