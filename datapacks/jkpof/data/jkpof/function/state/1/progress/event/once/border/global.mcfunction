title @a title {storage: "jk:pof", nbt: "txt.event.border.name", color: "aqua"}

execute if score #event_border jkpof.int matches 2 run function jkpof:state/1/progress/event/once/border/1st
execute if score #event_border jkpof.int matches 1 run function jkpof:state/1/progress/event/once/border/2nd

scoreboard players remove #event_border jkpof.int 1
