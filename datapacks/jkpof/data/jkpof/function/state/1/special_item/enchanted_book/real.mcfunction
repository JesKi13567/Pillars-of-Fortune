execute if items entity @s weapon.mainhand enchanted_book[unbreakable={}] run item modify entity @s weapon.offhand {type: "set_components", components: {unbreakable: {}}}
$item modify entity @s weapon.mainhand {type: "set_count", count: $(c)}
$item modify entity @s weapon.offhand {type: "set_enchantments", enchantments: $(e)}
playsound block.enchantment_table.use block @a
