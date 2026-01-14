$execute store result storage jk:pof data.lightning.index int 1 run random value 0..$(random_max)
execute store result storage jk:pof data.lightning.enchant_id int 1 run random value 0..42

function jkpof:state/1/progress/event/once/lightning/slot/real with storage jk:pof data.lightning
