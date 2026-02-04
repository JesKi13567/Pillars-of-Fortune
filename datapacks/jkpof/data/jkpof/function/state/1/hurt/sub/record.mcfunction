# 伤害来源为自己
execute if score @s jkpof.id = @s jkpof.damage.source.now run scoreboard players set @s jkpof.damage.source.now 0

# 选中攻击者
tag @s add jkpof_self
execute as @a if score @s jkpof.id = @p[tag=jkpof_self] jkpof.damage.source.now run tag @s add jkpof_murder

# 记录最终伤害
scoreboard players operation @s jkpof.damage.type.last = @s jkpof.damage.type.now
scoreboard players operation @s jkpof.damage.source.last = @s jkpof.damage.source.now

# 记录实际伤害
execute if entity @a[tag=jkpof_murder] run function jkpof:state/1/hurt/sub/record_real

# 清理
tag @a remove jkpof_self
tag @a remove jkpof_murder
