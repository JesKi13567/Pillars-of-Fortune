# 自定义 转换 物品->方块
$data modify storage jk:pof data.map.$(x) set from entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] item.id

$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 water_bucket run data modify storage jk:pof data.map.$(x) set value "water"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 lava_bucket run data modify storage jk:pof data.map.$(x) set value "lava"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 powder_snow_bucket run data modify storage jk:pof data.map.$(x) set value "powder_snow"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 flint_and_steel run data modify storage jk:pof data.map.$(x) set value "fire"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 fire_charge run data modify storage jk:pof data.map.$(x) set value "fire"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 carrot run data modify storage jk:pof data.map.$(x) set value "carrots"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 potato run data modify storage jk:pof data.map.$(x) set value "potatoes"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 wheat_seeds run data modify storage jk:pof data.map.$(x) set value "wheat"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 pumpkin_seeds run data modify storage jk:pof data.map.$(x) set value "pumpkin_stem"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 melon_seeds run data modify storage jk:pof data.map.$(x) set value "melon_stem"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 beetroot_seeds run data modify storage jk:pof data.map.$(x) set value "beetroots"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 torchflower_seeds run data modify storage jk:pof data.map.$(x) set value "torchflower_crop"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 sweet_berries run data modify storage jk:pof data.map.$(x) set value "sweet_berry_bush"
$execute if items entity @e[type=item_display, tag=jkpof_display_ctrl_map, tag=$(x), limit=1] container.0 glow_berries run data modify storage jk:pof data.map.$(x) set value "cave_vines_plant"
