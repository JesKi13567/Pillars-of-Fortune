# 普通物品
$data remove entity $(entity) $(i)tem.components."minecraft:item_model"

# 盔甲
$execute if items entity $(entity) container.0 #enchantable/armor run data remove entity $(entity) $(i)tem.components."minecraft:equippable"
$execute if items entity $(entity) container.0 elytra run data remove entity $(entity) $(i)tem.components."minecraft:equippable"

# 道具
$execute if items entity $(entity) container.0 bat_spawn_egg[custom_data={jkpof_model: "end_crystal"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "end_crystal"}}
$execute if items entity $(entity) container.0 bat_spawn_egg[custom_data={jkpof_model: "tnt"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "tnt"}}
$execute if items entity $(entity) container.0 bat_spawn_egg[custom_data={jkpof_model: "bat_spawn_egg"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "bat_spawn_egg"}}

$execute if items entity $(entity) container.0 tadpole_spawn_egg[custom_data={jkpof_model: "barrel"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "barrel"}}
$execute if items entity $(entity) container.0 tadpole_spawn_egg[custom_data={jkpof_model: "tadpole_spawn_egg"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "tadpole_spawn_egg"}}

$execute if items entity $(entity) container.0 snowball[custom_data={jkpof_model: "structure_void"}] run item modify entity $(entity) container.0 {function: "set_components", components: {item_model: "structure_void"}}
