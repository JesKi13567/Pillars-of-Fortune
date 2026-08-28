# 普通物品
$item modify entity @s $(slot) {function: "set_components", components: {item_model: "air"}}

# 盔甲
$execute if items entity @s $(slot) #head_armor run item modify entity @s $(slot) {function: "set_components", components: {equippable: {slot: "head"}}}
$execute if items entity @s $(slot) #chest_armor run item modify entity @s $(slot) {function: "set_components", components: {equippable: {slot: "chest"}}}
$execute if items entity @s $(slot) #leg_armor run item modify entity @s $(slot) {function: "set_components", components: {equippable: {slot: "legs"}}}
$execute if items entity @s $(slot) #foot_armor run item modify entity @s $(slot) {function: "set_components", components: {equippable: {slot: "feet"}}}
$execute if items entity @s $(slot) elytra run item modify entity @s $(slot) {function: "set_components", components: {equippable: {slot: "chest"}}}
