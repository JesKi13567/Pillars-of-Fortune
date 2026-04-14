$data modify storage jk:pof data.lightning.real set from storage jk:pof data.lightning.slot[$(index)]
$data modify storage jk:pof data.lightning.enchant_value set from storage jk:pof data.enchantments[$(enchant_index)]
function jkpof:state/1/progress/event/once/lightning/3 with storage jk:pof data.lightning
