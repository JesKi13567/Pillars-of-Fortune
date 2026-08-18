execute store result score #event_iron_torrent jkpof.int run random value 1..18

# 位置
execute store result storage jk:pof data.iron_torrent.x int 1 run random value -20..20
execute store result storage jk:pof data.iron_torrent.z int 1 run random value -20..20

# 类型
data modify storage jk:pof data.iron_torrent.block set value "anvil"
execute if score #event_iron_torrent jkpof.int matches 2 run data modify storage jk:pof data.iron_torrent.block set value "chipped_anvil"
execute if score #event_iron_torrent jkpof.int matches 3 run data modify storage jk:pof data.iron_torrent.block set value "damaged_anvil"
execute if score #event_iron_torrent jkpof.int matches 4 run data modify storage jk:pof data.iron_torrent.block set value "blast_furnace"
execute if score #event_iron_torrent jkpof.int matches 5 run data modify storage jk:pof data.iron_torrent.block set value "cauldron"
execute if score #event_iron_torrent jkpof.int matches 6 run data modify storage jk:pof data.iron_torrent.block set value "deepslate_iron_ore"
execute if score #event_iron_torrent jkpof.int matches 7 run data modify storage jk:pof data.iron_torrent.block set value "heavy_weighted_pressure_plate"
execute if score #event_iron_torrent jkpof.int matches 8 run data modify storage jk:pof data.iron_torrent.block set value "hopper"
execute if score #event_iron_torrent jkpof.int matches 9 run data modify storage jk:pof data.iron_torrent.block set value "iron_bars"
execute if score #event_iron_torrent jkpof.int matches 10 run data modify storage jk:pof data.iron_torrent.block set value "iron_block"
execute if score #event_iron_torrent jkpof.int matches 11 run data modify storage jk:pof data.iron_torrent.block set value "iron_chain"
execute if score #event_iron_torrent jkpof.int matches 12 run data modify storage jk:pof data.iron_torrent.block set value "iron_ore"
execute if score #event_iron_torrent jkpof.int matches 13 run data modify storage jk:pof data.iron_torrent.block set value "iron_trapdoor"
execute if score #event_iron_torrent jkpof.int matches 14 run data modify storage jk:pof data.iron_torrent.block set value "lantern"
execute if score #event_iron_torrent jkpof.int matches 15 run data modify storage jk:pof data.iron_torrent.block set value "rail"
execute if score #event_iron_torrent jkpof.int matches 16 run data modify storage jk:pof data.iron_torrent.block set value "raw_iron_block"

function jkpof:state/1/progress/event/iron_torrent/real with storage jk:pof data.iron_torrent
