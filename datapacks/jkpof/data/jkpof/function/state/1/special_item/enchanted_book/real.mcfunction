execute if items entity @s weapon.mainhand enchanted_book[unbreakable={}] run item modify entity @s weapon.offhand {function: "set_components", components: {unbreakable: {}}}
$item modify entity @s weapon.mainhand {function: "set_count", count: $(c)}
$item modify entity @s weapon.offhand {function: "set_enchantments", enchantments: $(e)}
playsound block.enchantment_table.use block @a
