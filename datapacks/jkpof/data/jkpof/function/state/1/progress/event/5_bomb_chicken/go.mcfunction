scoreboard players remove @s jkpof.int 1
execute if score #event_plus_5 jkpof.int matches 0 if score #ctrl_upside_down jkpof.int matches 0 unless score @s jkpof.int matches 1.. run summon tnt ~ ~ ~ {fuse: 110, Glowing: true}
execute if score #event_plus_5 jkpof.int matches 0 if score #ctrl_upside_down jkpof.int matches 1 unless score @s jkpof.int matches 1.. run summon tadpole ~ ~ ~ {Silent: true, attributes: [{id: "gravity", base: -0.08}, {id: "scale", base: 0.01}, {id: "jump_strength", base: 0}, {id: "movement_speed", base: 0}], Passengers: [{id: "tnt", fuse: 110, Glowing: true}]}
execute if score #event_plus_5 jkpof.int matches 1 if score #ctrl_upside_down jkpof.int matches 0 unless score @s jkpof.int matches 1.. run summon snowball ~ ~ ~ {Item: {id: "snowball", count: 1, components: {item_model: "structure_void", enchantment_glint_override: true, custom_data: {jkpof_model: "structure_void"}}}, Glowing: true}
execute if score #event_plus_5 jkpof.int matches 1 if score #ctrl_upside_down jkpof.int matches 1 unless score @s jkpof.int matches 1.. run summon tadpole ~ ~ ~ {Tags: ["jkpof_bomb_tadpole"], Silent: true, attributes: [{id: "gravity", base: -0.08}, {id: "scale", base: 0.01}, {id: "jump_strength", base: 0}, {id: "movement_speed", base: 0}], Passengers: [{id: "snowball", Item: {id: "snowball", count: 1, components: {item_model: "structure_void", enchantment_glint_override: true, custom_data: {jkpof_model: "structure_void"}}}, Glowing: true}]}
execute if score #event_plus_5 jkpof.int matches 1 if score #ctrl_upside_down jkpof.int matches 1 run scoreboard players set @e[type=tadpole, tag=jkpof_bomb_tadpole, tag=!jkpof] jkpof.int 5
execute if score #event_plus_5 jkpof.int matches 1 if score #ctrl_upside_down jkpof.int matches 1 run tag @e[type=tadpole, tag=jkpof_bomb_tadpole, tag=!jkpof] add jkpof
scoreboard players set @s[scores={jkpof.int=..0}] jkpof.int 12
tp @s ^ ^ ^.5
execute if score #event_time jkpof.int matches 0 run kill @s
