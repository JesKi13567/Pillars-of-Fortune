$item modify entity @s $(real) {function: set_components, components: {enchantments: {$(enchant_value): $(enchant_lvl)}}}
$execute if items entity @s $(real) golden_apple run item modify entity @s $(real) {function: set_item, item: enchanted_golden_apple}
