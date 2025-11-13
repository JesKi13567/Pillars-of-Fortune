$setblock 0 $(y0) 0 structure_block{integrity: $(integrity)f, posX: -$(r), posY: 1, posZ: -$(r), name: "jkpof:bedrock_r$(r)", mode: "LOAD"}
$setblock 0 $(y1) 0 redstone_block destroy
$fill 0 $(y0) 0 0 $(y1) 0 air strict
