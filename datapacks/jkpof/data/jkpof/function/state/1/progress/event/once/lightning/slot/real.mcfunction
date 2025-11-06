$data modify storage jk:pof data.lightning.real set from storage jk:pof data.lightning.slot[$(index)]
$data modify storage jk:pof data.lightning.enchant_value set from storage jk:pof data.enchantments[$(enchant_id)]
execute store result storage jk:pof data.lightning.enchant_lvl int 1 run random value 1..10

function jkpof:state/1/progress/event/once/lightning/slot/enchant with storage jk:pof data.lightning
