execute if block ~ ~ ~ #air run return 0
execute if score #event_touch_change.block_type jkpof.int matches 0 if block ~ ~ ~ #jkpof:touch_not_change run return 0
execute if entity @e[limit=1, type=marker, tag=jkpof_touch_block, distance=...1] run return 0
summon marker ~ ~ ~ {Tags: ["jkpof_touch_block"]}
setblock ~ ~ ~ bedrock strict
function jkpof:state/1/fill/random {tar: '#touch_block', x1: '~', y1: '~', z1: '~', x2: '~', y2: '~', z2: '~'}
