clear @s elytra 1
loot give @s loot jkpof:item/firework_rocket
playsound item.armor.equip_elytra block @s
item modify entity @s armor.chest {function: "set_components", components: {glider: {}, lore: [{type: "object", atlas: "items", sprite: "item/elytra", color: "white", italic: false}]}}
execute if items entity @s armor.chest chainmail_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 672}}
execute if items entity @s armor.chest copper_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 608}}
execute if items entity @s armor.chest diamond_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 960}}
execute if items entity @s armor.chest golden_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 544}}
execute if items entity @s armor.chest iron_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 672}}
execute if items entity @s armor.chest leather_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 512}}
execute if items entity @s armor.chest netherite_chestplate run item modify entity @s armor.chest {function: "set_components", components: {max_damage: 1024}}
