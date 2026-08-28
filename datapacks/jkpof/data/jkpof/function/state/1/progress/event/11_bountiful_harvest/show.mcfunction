execute as @a[scores={jkpof.state=2}] store result score @s jkpof.bh.hp run data get entity @s Health 100
execute as @a[scores={jkpof.state=2}] store result score @s jkpof.bh.max run attribute @s max_health get 100

execute if score #event_plus_11 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.tellraw", color: "aqua"}]
execute if score #event_plus_11 jkpof.int matches 0 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.name", color: "aqua"}
execute if score #event_plus_11 jkpof.int matches 0 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.bountiful_harvest.subtitle", color: "green"}
execute if score #event_plus_11 jkpof.int matches 0 as @a[scores={jkpof.state=2}] if score @s jkpof.bh.hp < @s jkpof.bh.max run effect give @s instant_health 1 19 true
execute if score #event_plus_11 jkpof.int matches 0 as @a[scores={jkpof.state=2}] unless score @s jkpof.bh.hp < @s jkpof.bh.max run tag @s add jkpof_bountiful_harvest
execute if score #event_plus_11 jkpof.int matches 0 as @a[scores={jkpof.state=2}, tag=jkpof_bountiful_harvest] store result score @s jkpof.item.order run random value 1..22
execute if score #event_plus_11 jkpof.int matches 0 if score #ctrl_item_mode jkpof.int matches 0 run function jkpof:state/1/give/real {A: 'a[tag=jkpof_bountiful_harvest, ', S: 's'}
execute if score #event_plus_11 jkpof.int matches 0 if score #ctrl_item_mode jkpof.int matches 1 run function jkpof:state/1/give/real {A: 'r[tag=jkpof_bountiful_harvest, ', S: 'a[tag=jkpof_bountiful_harvest, scores={jkpof.state=2}]'}
execute if score #event_plus_11 jkpof.int matches 0 run tag @a[tag=jkpof_bountiful_harvest] remove jkpof_bountiful_harvest

execute if score #event_plus_11 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.tellraw", color: "aqua"}]
execute if score #event_plus_11 jkpof.int matches 1 run title @a title {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.name", color: "aqua"}
execute if score #event_plus_11 jkpof.int matches 1 run title @a subtitle {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.bountiful_harvest.subtitle", color: "green"}
execute if score #event_plus_11 jkpof.int matches 1 as @a[scores={jkpof.state=2}] if score @s jkpof.bh.hp < @s jkpof.bh.max run clear @s *[custom_data~{jkpof: ["is_prop"]}] 1
execute if score #event_plus_11 jkpof.int matches 1 as @a[scores={jkpof.state=2}] unless score @s jkpof.bh.hp < @s jkpof.bh.max run damage @s 6
