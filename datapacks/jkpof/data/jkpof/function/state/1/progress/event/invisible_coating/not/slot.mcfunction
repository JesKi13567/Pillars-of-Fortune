$item replace entity @n[type=item_display, tag=jkpof_invisile_recover] container.0 from entity @s $(slot)

function jkpof:state/1/progress/event/invisible_coating/not/item {entity: '@n[type=item_display, tag=jkpof_invisile_recover]'}

$item replace entity @s $(slot) from entity @n[type=item_display, tag=jkpof_invisile_recover] container.0
