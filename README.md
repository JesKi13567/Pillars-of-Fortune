# 幸运之柱 JK's Pillars of Fortune
## v1.3 for MC 26.1
- [简体中文](#zh_cn)
- [繁體中文](#zh_tw)
- [English](#en_us)

## Lang
语言可以在大厅出生点附近切换（初始有提示），同时设定好客户端语言效果更佳。

- 现在还支持繁体中文，感谢[@AlexCai2019](https://github.com/AlexCai2019)。

The language can be switched near the lobby spawn point \(has hint in initial\), and setting the client language in advance will be better.

## zh_cn
### 目录
1. [介绍](#介绍)

1. [设置](#设置)

1. [事件](#事件)

1. [道具](#道具)

### 介绍
玩家初始生成在各个柱子顶端，每隔一段时间获得随机物品，最终目标是活到最后。

本地图支持 2~12 人/队 游玩，若开启队伍模式，理论上人数不限。

如何开始：玩家站在**黄绿色混凝土**或**羊毛**上方等待即可。

### 设置
所有设置都在大厅操作。

|设置项大类|设置项小类|描述|
|-|-|-|
|**随机物品给予**|分配模式|玩家获得的物品是否相同|
||数量|给予的物品个数|
||间隔秒数|每次获得物品的间隔|
|**柱子**|种类|包含随机，会被**地图**影响|
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
||**预设**|设置项的预设|
||**地图**|包含随机，将影响柱子和地面，开局时会显示名称，亦可自定义|
||颠倒模式|玩家初始获得*重力装置\*2*，柱子将在地面下方生成，部分事件会被影响|
||小孩模式|玩家尺寸大小为原来的 1/2|

以下设置在「游戏」附近调整。

|设置项|描述|
|-|-|
|**柱子数**|用于设定游玩人数或队伍数，选项包含 *自动/2/4/5/8/9/12*|
|**队伍模式**|柱子数量不为 “自动” 时才可启用，有自选与随机分配，默认禁用|

### 事件
事件会在大厅展示，同时玩家可以选择是否启用。

|事件列表|描述|
|-|-|
|观众投票|（观众事件）观众可投票选择下一玩家事件。事件初始触发冷却为 30 秒时开启投票，观众投票人数达到一半后确认下一事件。|
|边界收缩|边界收缩方向为 →← + ↓/↑，可收缩最多 2 次。|
|无事发生|无事发生也是一种事件，开局时必出。|
|万箭齐发|所有玩家头上将不断生成箭，缓冲 2 秒，持续 3 秒。|
|熔岩地板|所有玩家脚下的方块会逐渐变成熔岩。黄色羊毛->橙色羊毛->红色羊毛->熔岩。|
|雷霆之劫|给予随机玩家一发闪电束，同时给该玩家背包某一栏位进行随机附魔。其中，金苹果会变成附魔金苹果。|
|月球漫步|所有玩家获得 跳跃提升 + 缓降 效果。|
|飞鸡来袭|随机选取 2 名玩家确定一条水平投影直线，在限高屏障处生成一只鸡，其沿此直线飞行途中会定时投放被激活的TNT。|
|连锁换位|所有玩家随机交换位置，也可能不会。|
|道具补给|接下来的 3 次物品给予均有 60% 概率为道具。正常情况下，这个值是 16/1262。|

### 道具
道具也会在大厅展示。

|道具列表|描述|
|-|-|
|物品堆叠|大部分无耐久物品最大堆叠个数均修改为 64。|
|下界合金锭|可直接用于合成下界合金制的物品。|
|刷怪蛋|苦力怕刷怪蛋：均为自燃苦力怕。狼、猫＆鹦鹉：都是驯服的。部分生物拥有更多变种。弓/弩：能发射刷怪蛋并生成。|
|玩家的头|玩家死亡会掉落头颅。|
|附魔书|按 \[右键\] 给副手物品附魔。|
|可发射的火球|按 \[右键\] 来发射。|
|可发射的末影龙火球|按 \[右键\] 来发射。|
|击退棒|击退 V|
|急救平台|按 \[右键\] 在脚下生成一层粘液块平台。|
|折跃珍珠|沿指针方向瞬移最多 20 格，无视方块阻挡。|
|鞘翅|穿着任意胸甲，手持鞘翅并潜行，胸甲获得滑翔效果。|
|死亡笔记|被写入名字的玩家有概率在 40 秒后获得不可避免的死亡。需保证主手使用、正文为某一玩家名、书名为“DEATH NOTE”。初始/最低概率为 50%，每次使用将减去 100%。以下物品食用后将增加概率：苹果 : 金苹果 : 附魔金苹果 = 10% : 20% : 50%|
|超级星|使用后无敌 15 秒。|
|可随处放置的末地水晶|顾名思义。|
|时间控制器|使用后增加 1/4 游戏天。|
|战利品箱|来自原版 MC 的随机战利品，一个顶俩！|
|自燃TNT|3 秒后爆炸。|
|囚笼|用两层玻璃把玩家包裹起来。|
|信标|主手持信标，副手持玩家的头并潜行，能使对应玩家复活。|
|虚空护符|在落入虚空时把你送回来。|
|重力装置|永久地颠倒自己的重力方向。|

## zh_tw
### 目錄
1. [介紹](#介紹)

2. [設定](#設定)

3. [事件](#事件_)

4. [道具](#道具_)

### 介紹
開場玩家重生在每根柱子的頂端，每隔一段時間獲得隨機物品，最終目標是活到最後。

本地圖支援 2~12 人/隊 遊玩，若開啟隊伍模式，理論上人數不限。

如何開始：玩家站在**淺綠色混凝土**或**羊毛**上方等待即可。

### 設定
所有設定都在大廳操作。

|設定項目大類|設定項目小類|說明|
|-|-|-|
|**隨機物品給予**|分配模式|玩家獲得的物品是否相同|
||數量|給予的物品個數|
||間隔秒數|每次獲得物品的間隔|
|**柱子**|種類|包含隨機，會被**地圖**影響|
||高度|越大則頂部離地面越遠|
||間距|越大則離其他柱子越遠|
|**地面**|種類|包含隨機，會被**地圖**影響|
||半徑|越大則地面越寬|
||層數|越大則地面越厚|
||每層隨機|地面種類為隨機且層數 >1 時可啟用|
|**雜項**|時間|選擇白天黑夜及晝夜交替|
||夜視|玩家是否獲得夜視效果|
||自然回血|玩家是否可吃普通食物回血|
||進度展示|可避免其他玩家知曉你是否獲得某物品|
||定位條|展示經驗條上的玩家位置|
||**預設**|設定項目的預設|
||**地圖**|包含隨機，將影響柱子和地面，開場時會顯示名稱，亦可自訂|
||顛倒模式|玩家初始獲得*重力裝置\*2*，柱子將在地面下方生成，部分事件會被影響|
||小孩模式|玩家尺寸大小為原來的 1/2|

以下設定在「遊戲」附近調整。

|設定項目|說明|
|-|-|
|**柱子數**|用於設定遊玩人數或隊伍數，選項包含 *自動/2/4/5/8/9/12*|
|**隊伍模式**|柱子數量不為「自動」時才可啟用，有自選與隨機分配，預設停用|

### 事件_
事件會在大廳展示，同時玩家可以選擇是否啟用。

|事件列表|說明|
|-|-|
|觀眾投票|（觀眾事件）觀眾可投票選擇下一個玩家事件。事件初始觸發冷卻為 30 秒時開啟投票，觀眾投票人數達到一半後確認下一個事件。|
|邊界收縮|邊界收縮方向為 →← + ↓/↑，最多收縮 2 次。|
|無事發生|無事發生也是一種事件，開場時必出。|
|萬箭齊發|所有玩家頭上將不斷生成箭矢，緩衝 2 秒，持續 3 秒。|
|熔岩地板|所有玩家腳下的方塊會逐漸變成熔岩。黃色羊毛->橙色羊毛->紅色羊毛->熔岩。|
|雷霆之劫|給予隨機玩家一發閃電電流，同時隨機附魔背包內某一格欄位。其中，金蘋果會變成附魔金蘋果。|
|月球漫步|所有玩家獲得 跳躍提升 + 緩降 效果。|
|飛雞來襲|隨機選擇 2 名玩家連成水平投影直線，在限高屏障點生成一隻雞，其在沿此直線飛行途中會定時投放點燃的TNT。|
|連鎖換位|所有玩家可能隨機交換位置，也可能不換。|
|道具補給|接下來的 3 次給予物品均有 60% 機率為道具。正常情況下，這個值是 16/1262。|

### 道具_
道具也會在大廳展示。

|道具列表|說明|
|-|-|
|物品堆疊|大部分無耐久物品最大堆疊個數均修改為 64。|
|獄髓錠|可直接用於合成獄髓物品。|
|生怪蛋|苦力怕生怪蛋：均為自燃苦力怕。狼、貓＆鸚鵡：都是馴服的。部分生物擁有更多變種。弓/弩：能發射生怪蛋並生成。|
|玩家頭顱|玩家死亡會掉落頭顱。|
|附魔書|按 \[右鍵\] 給副手物品附魔。|
|可發射的火球|按 \[右鍵\] 來發射。|
|可發射的龍炎彈|按 \[右鍵\] 來發射。|
|擊退棒|擊退 V|
|急救平台|按 \[右鍵\] 在腳下生成一層史萊姆方塊平台。|
|折躍珍珠|沿準星方向瞬移 20 格，無視方塊阻擋。|
|鞘翅|穿著任意胸甲，手持鞘翅並潛行，胸甲獲得滑翔效果。|
|死亡筆記本|被寫入名字的玩家有機率在 40 秒後獲得不可避免的死亡。需保證主手使用、正文為一位玩家名稱、書名為「DEATH NOTE」。初始/最低機率為 50%，每次使用將減去 100%。以下物品食用後將增加機率：蘋果 : 金蘋果 : 附魔金蘋果 = 10% : 20% : 50%|
|無敵星|使用後無敵 15 秒。|
|可隨處放置的終界水晶|顧名思義。|
|時間控制器|使用後增加 1/4 遊戲天。|
|戰利品箱|來自原版 MC 的隨機戰利品，物超所值！|
|自燃TNT|3 秒後爆炸。|
|牢籠|用兩層玻璃把玩家包裹起來。|
|烽火台|主手持烽火台，副手持玩家頭顱並潛行，能使對應玩家復活。|
|虛空護符|在落入虛空時把你送回來。|
|重力裝置|永久地顛倒自己的重力方向。|

## en_us
### Contents
1. [Info](#Info)

1. [Settings](#Settings)

1. [Events](#Events)

1. [Items](#Items)

### Info
Players spawn on top of pillars at the beginning, receive random items at regular intervals, their goal is to be the last player surviving.

This map supports 2~12 players/teams. If Team Mode is on, player count has no limitation \(in theory\).

How to start: players need to stand on **Lime Concrete** or **wool** and wait.

### Settings
All settings can be configured in the lobby.

|Major Settings|Minor Settings|Description|
|-|-|-|
|**Random Item Give**|Distribution Mode|Whether players receive the same items|
||Count|Number of items given|
||Interval Seconds|Time between items given|
|**Pillars**|Type|Includes Random; affected by the **Map Theme** setting|
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
||**Presets**|Settings' presets|
||**Map Theme**|Includes Random; affects Pillars & Ground; if enabled, the theme name will be displayed at the beginning, can also be customed|
||Upside Down Mode|Players get *Gravity Device\*2* on spawn, the pillars are under the ground, some events will be influenced|
||Kid Mode|Set players' scale to 1/2|

Following settings can be adjusted near the "Play" area.

|Settings|Description|
|-|-|
|**Pillar Count**|The number of players or teams, including the options of *Auto/2/4/5/8/9/12*|
|**Team Mode**|Can be enabled only if the Pillar Count is not set to "Auto"|

### Events
Events are displayed in the lobby, and players can toggle their activation status.

|Events|Description|
|-|-|
|Spectators' Vote|\(Spectator Event\) Spectators can vote for the next player event. Voting opens when the initial event cooldown is 30 seconds. The next event will be confirmed once half of the spectators have voted.|
|Border Shrink|Border shrink direction: →← + ↓/↑, max twice.|
|Nothing Happens|Nothing Happens is also an event, and it will definitely be triggered at the beginning.|
|Arrow Rain|The Arrow will be continuously summoned above all players' heads, with a 2s buffer and a 3s duration.|
|Lava Floor|Blocks beneath all players' feet will gradually transform into Lava. Yellow Wool->Orange Wool->Red Wool->Lava|
|Lightning Strike|A random player will be struck by a Lightning Bolt, and a random slot in their inventory will receive a random enchantment. Additionally, the Golden Apple in that slot will be converted into the Enchanted Golden Apple.|
|Moon Walk|All players will receive Jump Boost + Slow Falling effects.|
|Bomb Chicken|Randomly select 2 players to form a horizontal projection line, then summon a Chicken at height-limit barrier. As it flies along this line, it will drop Primed TNT at regular intervals.|
|Chain Swap|All players' positions will be randomly swapped, or not.|
|Prop Supply|The next 3 items players receive have a 60% chance of being props. In common situation, the number is 16/1262.|

### Items
Items are also displayed in the lobby.

|Items|Description|
|-|-|
|Item Stack|Most non-durable items have a maximum stack size of 64.|
|Netherite Ingot|Can be directly used to craft Netherite things.|
|Spawn Egg|Creeper Spawn Egg: now spawns Self-Igniting Creeper. Wolf, Cat & Parrot: they are tamed. Some mobs have more variants. Bow/Crossbow: Can shoot spawn eggs then summon them.|
|Player Head|Players drop their own heads upon death.|
|Enchanted Book|Press \[Right Button\] to enchant offhand item.|
|Shootable Fireball|Press \[Right Button\] to shoot.|
|Shootable Dragon Fireball|Press \[Right Button\] to shoot.|
|Knockback Stick|Knockback V|
|Aid Platform|Press \[Right Button\] to place a Slime Block platform under your feet.|
|Warp Pearl|Teleport up to 20 blocks in the direction you're facing, ignoring all block obstructions.|
|Elytra|Wear any chestplate, hold an Elytra and sneaking, the chestplate obtains glide effect.|
|Death Note|The player whose name is written in this book has a chance of getting inevitable death in 40 seconds. When using, ensure it's on your mainhand, the content is one player's name and the book title is \"DEATH NOTE\". The initial/minimum probability is 50%, every use will reduce 100%. Consuming any of the following items will increase this probability: Apple : Golden Apple : Enchanted Golden Apple = 10% : 20% : 50%|
|Super Star|Invulnerable for 15s.|
|Place-Anywhere End Crystal|As the name says.|
|Time Controller|Adds 1/4 game day on use.|
|Loot Chest|Random loot from vanilla Minecraft, which is doubled!|
|Self-Igniting TNT|Explode in 3 seconds.|
|Cage|Surrounds the player with two layers of Glass.|
|Beacon|Mainhand: Beacon + Offhand: Player Head + Sneak = Respawn.|
|Void Charm|When you fall into void, send you back.|
|Gravity Device|Permanently reverse your gravity.|

## By JK137
https://github.com/JesKi13567/Pillars-of-Fortune
