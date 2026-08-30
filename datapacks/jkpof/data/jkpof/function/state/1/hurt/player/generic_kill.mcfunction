advancement revoke @s only jkpof:hurt/player/generic_kill

# 世界核平
execute as @s[scores={jkpof.damage.type.now=300}] run return 0

# 死亡笔记
function jkpof:state/1/hurt/player/_real {id: 299}
execute as @a[scores={jkpof.state=2..3}] if score @s jkpof.id = @a[limit=1, tag=jkpof_hurt] jkpof.death_note.source run function jkpof:state/1/hurt/do
