$data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, tag=$(n), limit=1] Glowing set value true
$data modify entity @e[type=item_display, tag=jkpof_display_lobby_item, tag=-1, limit=1] item set from entity @e[type=item_display, tag=jkpof_display_lobby_item, tag=$(n), limit=1] item
