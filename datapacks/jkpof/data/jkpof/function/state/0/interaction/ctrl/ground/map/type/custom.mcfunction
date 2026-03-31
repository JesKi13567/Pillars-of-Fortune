$data modify storage jk:pof data.map.$(x) set from entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] item.id

$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] container.0 water_bucket run data modify storage jk:pof data.map.$(x) set value "water"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] container.0 lava_bucket run data modify storage jk:pof data.map.$(x) set value "lava"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] container.0 powder_snow_bucket run data modify storage jk:pof data.map.$(x) set value "powder_snow"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] container.0 flint_and_steel run data modify storage jk:pof data.map.$(x) set value "fire"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map_$(x), limit=1] container.0 fire_charge run data modify storage jk:pof data.map.$(x) set value "fire"
