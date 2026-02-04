advancement revoke @s only jkpof:hurt/player/generic_kill
function jkpof:state/1/hurt/player/_real {id: 299}
execute as @a if score @s jkpof.id = @p[tag=jkpof_hurt] jkpof.death_note.source run function jkpof:state/1/hurt/do
