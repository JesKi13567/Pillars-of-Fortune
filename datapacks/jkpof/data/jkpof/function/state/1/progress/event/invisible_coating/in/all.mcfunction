effect give @e invisibility 1 0 true
execute as @e[type=item] run item modify entity @s container.0 {function: "set_components", components: {item_model: "air"}}
execute as @a[scores={jkpof.state=2}] run function jkpof:state/1/progress/event/invisible_coating/in/player
