summon marker ~-1 ~-1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~-1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~-1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~-1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~-1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~-1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~-1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~-1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~-1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~ ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~ ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~ ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~ ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~ ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~ ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~ ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~ ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~ ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~-1 ~1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~ ~1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~1 ~-1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~1 ~ {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}
summon marker ~1 ~1 ~1 {Tags: ["jkpof_water_marker", "jkpof_marker_water"]}

execute as @e[type=marker, tag=jkpof_water_marker] at @s unless block ~ ~ ~ #replaceable run kill @s
execute as @e[type=marker, tag=jkpof_marker_water] at @s run setblock ~ ~ ~ water strict

kill @e[type=marker, tag=jkpof_water_marker]
kill @s
