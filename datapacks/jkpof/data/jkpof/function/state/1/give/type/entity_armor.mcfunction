execute if score #ctrl_item_mode jkpof.int matches 0 store result score @s jkpof.item.color run random value 1..11

$execute if score @s jkpof.item.color matches 1 run give @s copper_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 2 run give @s copper_nautilus_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 3 run give @s diamond_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 4 run give @s diamond_nautilus_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 5 run give @s golden_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 6 run give @s golden_nautilus_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 7 run give @s iron_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 8 run give @s iron_nautilus_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 9 run give @s leather_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 10 run give @s netherite_horse_armor[max_stack_size=64] $(n)
$execute if score @s jkpof.item.color matches 11 run give @s netherite_nautilus_armor[max_stack_size=64] $(n)
