# 幸运之柱 JK's Pillars of Fortune
## v1.1.2 for MC 1.21.9-11
- [简体中文](#zh_cn)
- [English](#en_us)
## Lang
语言可以在大厅出生点附近切换（有高亮显示），同时设定好客户端语言效果更佳。

The (highlighted) language can be switched near the lobby spawn point, and setting the client language in advance will be better.

## zh_cn
### 目录
1. [介绍](#介绍)

1. [设置](#设置)

1. [事件](#事件)

1. [道具](#道具)
### 介绍
玩家初始生成在各个柱子顶端，每隔一段时间获得随机物品，最终目标是活到最后。

本**地图**支持 2~9 人/队 游玩，若开启队伍模式，理论上人数不限。
### 设置
所有设置都在大厅操作。

|设置项大类|设置项小类|描述|
|-|-|-|
|**随机物品给予**|分配模式|玩家获得的物品是否相同|
||数量|给予的物品个数|
||间隔秒数|每次获得物品的间隔|
|**柱子**|种类|包含随机，会被**地图**影响|
||数量|包含自动，设定游玩人数/队伍数|
||高度|越大则顶部离地面越远|
||间距|越大则离其他柱子越远|
|**地面**|种类|包含随机，会被**地图**影响|
||半径|越大则地面越宽|
||层数|越大则地面越厚|
||各层随机|地面种类为随机且层数 >1 时可启用|
|**杂项**|时间|选择白天黑夜及昼夜交替|
||夜视|玩家是否获得夜视效果|
||自然回血|玩家是否可吃普通食物回血|
||进度展示|可避免其他玩家知晓你是否获得某物品|
||定位栏|展示经验栏上的玩家位置|
||**预设**|设置项的预设（默认、共同体等）|
||**地图**|包含随机，将影响柱子和地面，开局时会显示名称|
||**队伍模式**|柱子数量不为 “自动” 时才可启用|

### 事件
事件会在大厅展示，同时玩家可以选择是否启用。

|事件列表|描述|
|-|-|
|无事发生|无事发生也是一种事件，开局时必出。|
|万箭齐发|所有玩家头上将不断生成箭，缓冲 2 秒，持续 3 秒。|
|熔岩地板|所有玩家脚下的方块会逐渐变成熔岩。黄色羊毛->橙色羊毛->红色羊毛->熔岩。|
|雷霆之劫|给予随机玩家一发闪电束，同时给该玩家背包某一栏位进行随机附魔。其中，金苹果会变成附魔金苹果。|
|月球漫步|所有玩家获得 跳跃提升 + 缓降 效果。|
|飞鸡来袭|随机选取 2 名玩家确定一条水平投影直线，在 Y=120 处生成一只鸡，其沿此直线飞行途中会定时投放被激活的TNT。|
|边界收缩|边界收缩方向为 →↓←，可收缩最多 2 次。|
|观众投票|（观众事件）观众可投票选择下一玩家事件。事件初始触发冷却为 30 秒时开启投票，观众投票人数达到一半后确认下一事件。|

### 道具
道具也会在大厅展示。

|道具列表|描述|
|-|-|
|堆叠修改|无耐久物品最大堆叠个数均为 64，若发现有物品未堆叠则需丢出刷新。|
|可发射的火球|按 \[右键\] 来发射。|
|急救平台|按 \[右键\] 在脚下生成一层粘液块平台。|
|自燃TNT|顾名思义。|
|可随处放置的末地水晶|顾名思义。|
|击退棒|击退 V|
|下界合金锭|可直接用于合成下界合金制的武器/装备。|
|折跃珍珠|沿指针方向瞬移，最多 20 格。|
|战利品箱|来自原版 MC 的随机战利品。|
|玩家头颅|玩家死亡会掉落头颅。|

## en_us
### Contents
1. [Info](#Info)

1. [Settings](#Settings)

1. [Events](#Events)

1. [Items](#Items)
### Info
Players spawn on top of pillars at the beginning, receive random items at regular intervals, their goal is to be the last player standing.

This **map** supports 2~9 players/teams. If Team Mode is on, player count has no limitation \(in theory\).
### Settings
All settings can be configured in the lobby.

|Major Settings|Minor Settings|Description|
|-|-|-|
|**Random Item Give**|Distribution Mode|Whether players receive the same items|
||Count|Number of items given|
||Interval Seconds|Time between items given|
|**Pillars**|Type|Includes Random; affected by the **Map Theme** setting|
||Count|Includes Auto; the number of players/teams|
||Height|Higher value = top farther from the ground|
||Distance|Higher value = farther from other pillars|
|**Ground**|Type|Includes Random; affected by the **Map Theme** setting|
||Radius|Higher value = wider ground|
||Floor Count|Higher value = thicker ground|
||Random per Floor|Enabled when Ground Type is Random and Floor Count > 1|
|**Others**|Time|Select day or night, and day-night cycle|
||Night Vision|Whether players receive the Night Vision effect|
||Natural Regeneration|Whether players can regenerate health by eating common food|
||Show Advancements|Prevents other players from knowing if you've received specific items|
||Locator Bar|Whether to display player positions on the experience bar|
||**Presets**|Settings' presets (Default, Unity, etc.)|
||**Map Theme**|Includes Random; affects Pillars & Ground; if enabled, the theme name will be displayed at the beginning|
||**Team Mode**|Can be enabled only if the Pillar Count is not set to "Auto"|

### Events
Events are displayed in the lobby, and players can toggle their activation status.

|Events|Description|
|-|-|
|Nothing Happens|Nothing Happens is also an event, and it will definitely be triggered at the beginning.|
|Arrow Rain|The Arrow will be continuously summoned above all players' heads, with a 2s buffer and a 3s duration.|
|Lava Floor|Blocks beneath all players' feet will gradually transform into Lava. Yellow Wool->Orange Wool->Red Wool->Lava|
|Lightning Strike|A random player will be struck by a Lightning Bolt, and a random slot in their inventory will receive a random enchantment. Additionally, the Golden Apple in that slot will be converted into the Enchanted Golden Apple.|
|Moon Walk|All players will receive Jump Boost + Slow Falling effects.|
|Bomb Chicken|Randomly select 2 players to form a horizontal projection line, then summon a Chicken at Y=120. As it flies along this line, it will drop Primed TNT at regular intervals.|
|Border Shrink|Border shrink direction: →↓←, max twice.|
|Spectators' Vote|\(Spectator Event\) Spectators can vote for the next player event. Voting opens when the initial event cooldown is 30 seconds. The next event will be confirmed once half of the spectators have voted.|

### Items
Items are also displayed in the lobby.

|Items|Description|
|-|-|
|Stack Modification|All non-durable items have a maximum stack size of 64, if not, drop them to refresh.|
|Shootable Fireball|Press \[Right Button\] to shoot.|
|Aid Platform|Press \[Right Button\] to place a Slime Block platform under your feet.|
|Self-Igniting TNT|As the name says.|
|Place-Anywhere End Crystal|As the name says.|
|Knockback Stick|Knockback V|
|Netherite Ingot|Can be directly used to craft Netherite tools/armor.|
|Warp Pearl|Teleport up to 20 blocks in the direction you're facing.|
|Loot Chest|Random loot from vanilla Minecraft.|
|Player Head|Players drop their own heads upon death.|

## By JK137
https://github.com/JesKi13567/Pillars-of-Fortune
