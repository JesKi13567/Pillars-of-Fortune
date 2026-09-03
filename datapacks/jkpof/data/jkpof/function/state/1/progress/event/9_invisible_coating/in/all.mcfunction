execute if score #event_plus_9 jkpof.int matches 0 as @e[type=item] run item modify entity @s container.0 {function: "set_components", components: {item_model: "air"}}
execute if score #event_plus_9 jkpof.int matches 0 as @a[scores={jkpof.state=2}] run function jkpof:state/1/progress/event/9_invisible_coating/in/player
execute if score #event_plus_9 jkpof.int matches 0 as @e[type=#jkpof:mobs] run function jkpof:state/1/progress/event/9_invisible_coating/in/mob
execute if score #event_plus_9 jkpof.int matches 1 as @e[type=item] run data modify entity @s Glowing set value true
execute if score #event_plus_9 jkpof.int matches 1 run effect give @a[scores={jkpof.state=2}] glowing 1 0 true
execute if score #event_plus_9 jkpof.int matches 1 run effect give @e[type=#jkpof:mobs] glowing 1 0 true
