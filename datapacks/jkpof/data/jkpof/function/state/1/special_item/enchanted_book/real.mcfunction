$item modify entity @s weapon.mainhand {function: "set_count", count: $(c)}
$item modify entity @s weapon.offhand {function: "set_enchantments", enchantments: $(e)}
playsound block.enchantment_table.use player @a
