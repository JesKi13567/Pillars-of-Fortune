# 位置
execute store result storage jk:pof data.iron_torrent.x int 1 run random value -20..20
execute store result storage jk:pof data.iron_torrent.z int 1 run random value -20..20

# 铁
execute if score #event_plus_12 jkpof.int matches 0 store result score #event_iron_torrent.order jkpof.int run random value 1..18
execute if score #event_plus_12 jkpof.int matches 0 run data modify storage jk:pof data.iron_torrent.block set value "anvil"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 2 run data modify storage jk:pof data.iron_torrent.block set value "chipped_anvil"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 3 run data modify storage jk:pof data.iron_torrent.block set value "damaged_anvil"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 4 run data modify storage jk:pof data.iron_torrent.block set value "blast_furnace"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 5 run data modify storage jk:pof data.iron_torrent.block set value "cauldron"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 6 run data modify storage jk:pof data.iron_torrent.block set value "deepslate_iron_ore"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 7 run data modify storage jk:pof data.iron_torrent.block set value "heavy_weighted_pressure_plate"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 8 run data modify storage jk:pof data.iron_torrent.block set value "hopper"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 9 run data modify storage jk:pof data.iron_torrent.block set value "iron_bars"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 10 run data modify storage jk:pof data.iron_torrent.block set value "iron_block"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 11 run data modify storage jk:pof data.iron_torrent.block set value "iron_chain"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 12 run data modify storage jk:pof data.iron_torrent.block set value "iron_ore"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 13 run data modify storage jk:pof data.iron_torrent.block set value "iron_trapdoor"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 14 run data modify storage jk:pof data.iron_torrent.block set value "lantern"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 15 run data modify storage jk:pof data.iron_torrent.block set value "rail"
execute if score #event_plus_12 jkpof.int matches 0 if score #event_iron_torrent.order jkpof.int matches 16 run data modify storage jk:pof data.iron_torrent.block set value "raw_iron_block"

# 铜
execute if score #event_plus_12 jkpof.int matches 1 store result score #event_iron_torrent.waxed jkpof.int run random value 0..1
data modify storage jk:pof data.iron_torrent.waxed set value ""
execute if score #event_iron_torrent.waxed jkpof.int matches 1 run data modify storage jk:pof data.iron_torrent.waxed set value "waxed_"

execute if score #event_plus_12 jkpof.int matches 1 store result score #event_iron_torrent.oxidized jkpof.int run random value 0..3
data modify storage jk:pof data.iron_torrent.oxidized set value ""
execute if score #event_iron_torrent.oxidized jkpof.int matches 1 run data modify storage jk:pof data.iron_torrent.oxidized set value "exposed_"
execute if score #event_iron_torrent.oxidized jkpof.int matches 2 run data modify storage jk:pof data.iron_torrent.oxidized set value "weathered_"
execute if score #event_iron_torrent.oxidized jkpof.int matches 3 run data modify storage jk:pof data.iron_torrent.oxidized set value "oxidized_"

execute if score #event_plus_12 jkpof.int matches 1 store result score #event_iron_torrent.order jkpof.int run random value 1..17
execute if score #event_plus_12 jkpof.int matches 1 run data modify storage jk:pof data.iron_torrent.block set value "copper_block"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.oxidized jkpof.int matches 1 run data modify storage jk:pof data.iron_torrent.block set value "exposed_copper"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.oxidized jkpof.int matches 2 run data modify storage jk:pof data.iron_torrent.block set value "weathered_copper"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.oxidized jkpof.int matches 3 run data modify storage jk:pof data.iron_torrent.block set value "oxidized_copper"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 2 run data modify storage jk:pof data.iron_torrent.block set value "chiseled_copper"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 3 run data modify storage jk:pof data.iron_torrent.block set value "copper_bars"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 4 run data modify storage jk:pof data.iron_torrent.block set value "copper_bulb"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 5 run data modify storage jk:pof data.iron_torrent.block set value "copper_chain"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 6 run data modify storage jk:pof data.iron_torrent.block set value "copper_chest"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 7 run data modify storage jk:pof data.iron_torrent.block set value "copper_door"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 8 run data modify storage jk:pof data.iron_torrent.block set value "copper_golem_statue"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 9 run data modify storage jk:pof data.iron_torrent.block set value "copper_grate"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 10 run data modify storage jk:pof data.iron_torrent.block set value "copper_lantern"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 11 run data modify storage jk:pof data.iron_torrent.block set value "copper_trapdoor"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 12 run data modify storage jk:pof data.iron_torrent.block set value "cut_copper"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 13 run data modify storage jk:pof data.iron_torrent.block set value "cut_copper_slab"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 14 run data modify storage jk:pof data.iron_torrent.block set value "cut_copper_stairs"
execute if score #event_plus_12 jkpof.int matches 1 if score #event_iron_torrent.order jkpof.int matches 15 run data modify storage jk:pof data.iron_torrent.block set value "lightning_rod"

function jkpof:state/1/progress/event/12_iron_torrent/real with storage jk:pof data.iron_torrent

execute if score #event_time jkpof.int matches 0 if score #event_plus_12 jkpof.int matches 0 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.iron_torrent.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
execute if score #event_time jkpof.int matches 0 if score #event_plus_12 jkpof.int matches 1 run tellraw @a [{storage: "jk:pof", interpret: true, nbt: "txt.POF.show", color: "yellow"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.plus.iron_torrent.name", color: "aqua"}, {storage: "jk:pof", interpret: true, nbt: "txt.event.global.stage_ended"}]
