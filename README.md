# 幸运之柱 JK's Pillars of Fortune
## v1.3 for MC1.21.11
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

1. [命令](#命令)

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
||道具获取概率|选项包含 *默认/1%/2%/3%/4%/5%*|
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
||物品获取倒计时|可关闭显示|
||事件进度条|可关闭显示|
||**预设**|设置项的预设|
|**地图**| \ |包含随机，将影响柱子和地面，开局时会显示名称，亦可自定义|
|**特殊规则**|颠倒模式|玩家初始获得「重力装置」*2，柱子将在地面下方生成，部分事件会被影响。|
||小孩模式|玩家尺寸为原来的 1/2 。|
||仁慈的虚空|玩家掉落下虚空时，会从上虚空回归。|
||双倍生命值| \ |
||初始工具|玩家初始获得「挖掘一切」*1|

以下设置在「游戏」附近调整。

|设置项|描述|
|-|-|
|**柱子数**|用于设定游玩人数或队伍数，选项包含 *自动/2/4/5/8/9/12*|
|**队伍模式**|柱子数量不为 “自动” 时才可启用，有自选与随机分配，默认禁用|

### 事件
事件会在大厅展示，同时玩家可以选择是否启用。

|事件列表|描述|
|-|-|
|清理垃圾/幸运之帚（系统事件）|系统每 2 分钟清理一次掉落物。若有玩家死亡，下次清理时间增加 30 秒。|
|观众投票/幸运之票（观众事件）|观众可投票选择下一玩家事件。事件初始触发冷却为 30 秒时开启投票，观众投票人数达到一半后确认下一事件。|
|边界收缩|边界收缩方向：→← + ↓。最多收缩 2 次。|
|无事发生|无事发生也是一种事件，开局时必出。|
|万箭齐发|所有玩家头上将不断生成箭，缓冲 2 秒，持续 3 秒。|
|熔岩地板|所有玩家脚下的方块会逐渐变成熔岩。黄色羊毛->橙色羊毛->红色羊毛->熔岩|
|雷霆之劫|给予随机玩家一发闪电束，同时给该玩家背包某一栏位进行随机附魔。|
|月球漫步|所有玩家获得 跳跃提升 + 缓降 效果。|
|飞鸡来袭|随机选取 2 名玩家确定一条水平投影直线，在限高屏障处生成一只鸡，其沿此直线飞行途中会定时投放被激活的TNT。|
|连锁换位|所有玩家随机交换位置，也可能不会。|
|道具补给|接下来的 3 次物品给予将随机触发以下情况：1. 均有 60% 概率为道具。(80%) 2. 额外附赠随机附魔书。(10%) 3. 额外附赠随机药水。(10%)|
|天地封锁|每位玩家上下层级铺满屏障，持续 8 秒。|
|隐形涂层|所有实体隐形，玩家背包物品也不可见，持续 10 秒。|
|背叛之时|随机选中一名玩家转为全员敌对状态，其余玩家结成同一队伍，效果持续至下个事件触发时重置。|

### 道具
道具也会在大厅展示。

|道具列表|描述|
|-|-|
|物品堆叠|大部分无耐久物品最大堆叠个数均修改为 64。|
|下界合金锭|可直接用于合成下界合金制的物品。|
|刷怪蛋|苦力怕刷怪蛋：均为自燃苦力怕。狼，猫＆鹦鹉：都是驯服的。部分生物拥有更多变种。弓/弩：能发射刷怪蛋并生成。|
|玩家的头|玩家死亡会掉落头颅。主手持信标，副手持玩家的头并潜行，能使对应玩家复活。|
|附魔书|按 [右键] 给副手物品附魔。|
|挖掘一切|能挖掘生存模式下的所有可挖掘方块。|
|烟花火箭|内含随机烟花。|
|击退棒|击退 V|
|急救平台|在脚下生成一层黏液块平台。|
|折跃珍珠|沿指针方向瞬移 20 格，无视方块阻挡。|
|鞘翅|穿着任意胸甲，手持鞘翅并潜行，胸甲激活滑翔效果。若成功激活，将获得随机的烟花火箭。|
|死亡笔记|被写入名字的玩家有概率在 40 秒后获得不可避免的死亡。需保证主手使用、正文为某一玩家名、书名为“DEATH NOTE”。初始/最低概率为 50%，每次使用将减去 100%。以下物品食用后将增加概率：苹果 : 金苹果 : 附魔金苹果 = 10% : 20% : 50%|
|无敌星|使用后无敌 15 秒。|
|可随处放置的末地水晶| \ |
|秒人斧|1 点耐久，10 亿伤害。|
|传送卷轴|以下三种效果中随机触发其一：1. 传送至出生点。2. 传送至任意玩家位置。3. 传送至地面中心点。|
|可发射的火球|按 [右键] 来发射。|
|可发射的末影龙火球|按 [右键] 来发射。|
|湮灭爆弹|湮灭目标区域 9×9×9 范围的所有方块。|
|时间控制器|使用后增加 1/4 游戏天。|
|大盗鬼手|夺取指针指向玩家的物品栏内的一格物品。|
|战利品箱|来自原版 MC 的随机战利品，一个顶俩！|
|快速防御塔|放下后会自动快速建造一座防御塔。|
|自燃TNT|3 秒后爆炸。|
|囚笼|用两层玻璃把玩家包裹起来。|
|虚空护符|在落入下虚空时把你送回来。|
|重力装置|永久地颠倒自己的重力方向。|
|当个创世神|获得 3 秒创造模式。处于创造模式时，此道具会被清除。不建议使用已保存的快捷栏。|

### 命令
可以给管理员用。

|命令列表|描述|
|-|-|
|`/function jkpof:init`|重置/初始化整个地图。|
|`/function jkpof:test/_start`|以测试模式开启游戏（单人亦可），但无法正常结束。|
|`/function jkpof:test/_stop`|强制结束当前游戏。|
|`/function jkpof:test/creative`|游戏中切换为创造模式。|
|`/function jkpof:test/give`|所有人清空背包，获得一堆随机道具，但会导致物品给予延后。|
|`/function jkpof:test/next_event`|直接触发当前事件。|

## zh_tw

### 目錄
1. [介紹](#介紹)

2. [設定](#設定)

3. [事件](#事件_)

4. [道具](#道具_)

5. [指令](#指令)

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
||道具獲取機率|選項包含 *預設/1%/2%/3%/4%/5%*|
|**柱子**|種類|包含隨機，會被**地圖**影響|
||高度|越大則頂部離地面越遠|
||間距|越大則離其他柱子越遠|
|**地面**|種類|包含隨機，會被**地圖**影響|
||半徑|越大則地面越寬|
||層數|越大則地面越厚|
||每層隨機|地面種類為隨機且層數 > 1 時可啟用|
|**雜項**|時間|選擇白天黑夜及晝夜交替|
||夜視|玩家是否獲得夜視效果|
||自然回血|玩家是否可吃普通食物回血|
||進度展示|可避免其他玩家知曉你是否獲得某物品|
||定位條|展示經驗條上的玩家位置|
||物品獲取倒計時|可關閉顯示|
||事件進度條|可關閉顯示|
||**預設**|設定項目的預設|
|**地圖**| \ |包含隨機，將影響柱子和地面，開場時會顯示名稱，亦可自訂|
||顛倒模式|玩家初始獲得「重力裝置」* 2，柱子將在地面下方生成，部分事件會被影響。|
||小孩模式|玩家大小為原來的 1/2 。|
||仁慈的虛空|玩家掉落下虛空時，會從上虛空回歸。|
||雙倍生命值| \ |
||初始工具|玩家初始獲得「挖掘一切」* 1|

以下設定在「遊戲」附近調整。

|設定項目|說明|
|-|-|
|**柱子數**|用於設定遊玩人數或隊伍數，選項包含 *自動/2/4/5/8/9/12*|
|**隊伍模式**|柱子數量不為「自動」時才可啟用，有自選與隨機分配，預設停用|

### 事件_
事件會在大廳展示，同時玩家可以選擇是否啟用。

|事件列表|說明|
|-|-|
|清理垃圾/幸運之帚（系統事件）|系統每 2 分鐘清理一次掉落物。若有玩家死亡，下次清理時間增加 30 秒。|
|觀眾投票/幸運之票（觀眾事件）|觀眾可投票選擇下一個玩家事件。事件初始觸發冷卻為 30 秒時開啟投票，觀眾投票人數達到一半後確認下一個事件。|
|邊界收縮|邊界收縮方向：→← + ↓。最多收縮 2 次。|
|無事發生|無事發生也是一種事件，開場時必出。|
|萬箭齊發|所有玩家頭上將不斷生成箭矢，緩衝 2 秒，持續 3 秒。|
|熔岩地板|所有玩家腳下的方塊會逐漸變成熔岩。黃色羊毛->橙色羊毛->紅色羊毛->熔岩|
|雷霆之劫|給予隨機玩家一發閃電電流，同時隨機附魔背包內某一格欄位。|
|月球漫步|所有玩家獲得 跳躍提升 + 緩降 效果。|
|飛雞來襲|隨機選擇 2 名玩家連成水平投影直線，在限高屏障點生成一隻雞，其在沿此直線飛行途中會定時投放點燃的 TNT。|
|連鎖換位|所有玩家可能隨機交換位置，也可能不換。|
|道具補給|接下來的 3 次給予物品將隨機觸發以下情況：1. 均有 60% 機率為道具。(80%) 2. 額外附贈隨機附魔書。(10%) 3. 額外附贈隨機藥水。(10%) |
|天地封鎖|每位玩家上下層級鋪滿屏障，持續 8 秒。|
|隱形塗層|所有實體隱形，玩家背包物品也不可見，持續 10 秒。|
|背叛之時|隨機選中一名玩家轉為全員敵對狀態，其餘玩家結成同一隊伍，效果持續至下個事件觸發時重設。|

### 道具_
道具也會在大廳展示。

|道具列表|說明|
|-|-|
|物品堆疊|大部分無耐久物品最大堆疊個數均修改為 64。|
|獄髓錠|可直接用於合成獄髓物品。|
|生怪蛋|苦力怕生怪蛋：均為自燃苦力怕。狼，貓＆鸚鵡：都是馴服的。部分生物擁有更多變種。弓/弩：能發射生怪蛋並生成。|
|玩家頭顱|玩家死亡會掉落頭顱。主手持烽火台，副手持玩家頭顱並潛行，能使對應玩家復活。|
|附魔書|按 [右鍵] 給副手物品附魔。|
|挖掘一切|能挖掘生存模式下的所有可挖掘方塊。|
|煙火|內含隨機煙火。|
|擊退棒|擊退 V|
|急救平台|在腳下生成一層史萊姆方塊平台。|
|折躍珍珠|沿準星方向瞬移 20 格，無視方塊阻擋。|
|鞘翅|穿著任意胸甲，手持鞘翅並潛行，胸甲啟動滑翔效果。若成功啟動，將獲得隨機的煙火。|
|死亡筆記本|被寫入名字的玩家有機率在 40 秒後獲得不可避免的死亡。需保證主手使用、正文為一位玩家名稱、書名為「DEATH NOTE」。初始/最低機率為 50%，每次使用將減去 100%。以下物品食用後將增加機率：蘋果 : 金蘋果 : 附魔金蘋果 = 10% : 20% : 50%|
|無敵星|使用後無敵 15 秒。|
|可隨處放置的終界水晶| \ |
|秒人斧|1 點耐久，10 億傷害。|
|傳送卷軸|以下三種效果中隨機觸發其一：1. 傳送至出生點。2. 傳送至任意玩家位置。3. 傳送至地面中心點。|
|可發射的火球|按 [右鍵] 來發射。|
|可發射的龍炎彈|按 [右鍵] 來發射。|
|湮滅爆彈|湮滅目標區域 9×9×9 範圍的所有方塊。|
|時間控制器|使用後增加 1/4 遊戲天。|
|大盜鬼手|奪取準星指向的玩家物品欄內的一格物品。|
|戰利品箱|來自原版 MC 的隨機戰利品，物超所值！|
|快速防禦塔|放下後會自動快速建造一座防禦塔。|
|自燃TNT|3 秒後爆炸。|
|牢籠|用兩層玻璃把玩家包裹起來。|
|虛空護符|在落入下虛空時把你送回來。|
|重力裝置|永久地顛倒自己的重力方向。|
|當個創世神|獲得 3 秒創造模式。處於創造模式時，此道具會被清除。不建議使用已儲存的快捷欄。|

### 指令
可以給管理員用。

|指令清單|描述|
|-|-|
|`/function jkpof:init`|重設/初始化整個地圖。|
|`/function jkpof:test/_start`|以測試模式開啟遊戲（單人亦可），但無法正常結束。|
|`/function jkpof:test/_stop`|強制結束目前遊戲。|
|`/function jkpof:test/creative`|遊戲中切換為創造模式。|
|`/function jkpof:test/give`|所有人清空背包，獲得一堆隨機道具，但會導致物品給予延後。|
|`/function jkpof:test/next_event`|直接觸發目前事件。|

## en_us
### Contents
1. [Info](#Info)

1. [Settings](#Settings)

1. [Events](#Events)

1. [Items](#Items)

1. [Commands](#Commands)

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
||Prop Chance|Including the options of *Default/1%/2%/3%/4%/5%*|
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
||Next Item Countdown|Can toggle its display|
||Event Progress Bar|Can toggle its display|
||**Presets**|Settings' presets|
|**Map Theme**| \ |Includes Random; affects Pillars & Ground; if enabled, the theme name will be displayed at the beginning, can also be customed|
|**Special Rules**|Upside Down Mode|Players get "Gravity Device"*2 on spawn, the pillars are under the ground, some events will be influenced.|
||Kid Mode|Set players' Scale to 1/2 .|
||Forgiving Void|Falling into the lower void will return the player from the upper void.|
||Double Health| \ |
||Init Tool|Players get "Mine Everything"*1 on spawn.|

Following settings can be adjusted near the "Play" area.

|Settings|Description|
|-|-|
|**Pillar Count**|The number of players or teams, including the options of *Auto/2/4/5/8/9/12*|
|**Team Mode**|Can be enabled only if the Pillar Count is not set to "Auto"|

### Events
Events are displayed in the lobby, and players can toggle their activation status.

|Events|Description|
|-|-|
|Clear Trash / BOF (System Event)|The system clears dropped items every 2m. If a player dies, the next cleanup time will be delayed by 30s.|
|Spectators' Vote / VOF (Spectator Event)|Spectators can vote for the next player event. Voting opens when the initial event cooldown is 30 seconds. The next event will be confirmed once half of the spectators have voted.|
|Border Shrink|Border shrink direction: →← + ↓. Max twice.|
|Nothing Happens|Nothing Happens is also an event, and it will definitely be triggered at the beginning.|
|Arrow Rain|The Arrow will be continuously summoned above all players' heads, with a 2s buffer and a 3s duration.|
|Lava Floor|Blocks beneath all players' feet will gradually transform into Lava. Yellow Wool->Orange Wool->Red Wool->Lava|
|Lightning Strike|A random player will be struck by a Lightning Bolt, and a random slot in their inventory will receive a random enchantment.|
|Moon Walk|All players will receive Jump Boost + Slow Falling effects.|
|Bomb Chicken|Randomly select 2 players to form a horizontal projection line, then summon a Chicken at height-limit barrier. As it flies along this line, it will drop Primed TNT at regular intervals.|
|Chain Swap|All players' positions will be randomly swapped, or not.|
|Prop Supply|The next 3 items players receive will be randomly chosen from the following: 1. 60% chance of being props. (80%) 2. Plus a random Enchanted Book. (10%) 3. Plus a random Potion. (10%) |
|Vertical Lock|Fill the layers above and below each player with Barrier, lasting 8s.|
|Invisible Coating|All entities & inventory items are invisible, lasting 10s.|
|Betrayal Hour|One random player becomes fully hostile to all others, while the remaining players are auto-allied.  Status resets on the next event.|

### Items
Items are also displayed in the lobby.

|Items|Description|
|-|-|
|Item Stack|Most non-durable items have a maximum stack size of 64.|
|Netherite Ingot|Can be directly used to craft Netherite things.|
|Spawn Egg|Creeper Spawn Egg: spawns Self-Igniting Creeper. Wolf, Cat & Parrot: they are tamed. Some mobs have more variants. Bow/Crossbow: Can shoot spawn eggs then summon them.|
|Player Head|Players drop their own heads upon death. Mainhand: Beacon + Offhand: Player Head + Sneak = Respawn.|
|Enchanted Book|Press [Right Button] to enchant offhand item.|
|Mine Everything|Mines any mineable block in Survival Mode.|
|Firework Rocket|Contains random fireworks.|
|Knockback Stick|Knockback V|
|Aid Platform|Place a Slime Block platform under your feet.|
|Warp Pearl|Teleport 20 blocks forward, passing through blocks.|
|Elytra|Wear any chestplate, hold Elytra & sneak: chestplate grants glide. If attached, grant a random Firework Rocket.|
|Death Note|The player whose name is written in this book has a chance of getting inevitable death in 40 seconds. When using, ensure it's on your mainhand, the content is one player's name and the book title is "DEATH NOTE". The initial/minimum probability is 50%, every use will reduce 100%. Consuming any of the following items will increase this probability: Apple : Golden Apple : Enchanted Golden Apple = 10% : 20% : 50%|
|Super Star|Invulnerable for 15s.|
|Place-Anywhere End Crystal| \ |
|One-Hit Axe|1 Durability · 1B Damage|
|Teleport Scroll|Randomly trigger one of the following three effects: 1. Teleport to spawn point. 2. Teleport to a random player's location. 3. Teleport to the center of the ground.|
|Shootable Fireball|Press [Right Button] to shoot.|
|Shootable Dragon Fireball|Press [Right Button] to shoot.|
|Null Bomb|Erases all blocks in a 9×9×9 area.|
|Time Controller|Adds 1/4 game day on use.|
|Arch-Thief's Spectral Hand|Steal one inventory slot item from the pointed player.|
|Loot Chest|Random loot from vanilla Minecraft, which is doubled!|
|Quick Defend Tower|It will build a tower soon after you placed.|
|Self-Igniting TNT|Explode in 3 seconds.|
|Cage|Surrounds the player with two layers of Glass.|
|Void Charm|When you fall into lower void, send you back.|
|Gravity Device|Permanently reverse your gravity.|
|Creatived!|Gain Creative Mode for 3s. This prop will be cleared in Creative Mode. It's not recommended to use Saved Hotbars.|

### Commands
All commands below are for admins only.

|Commands|Description|
|-|-|
|`/function jkpof:init`|Reset/Initialize the entire map.|
|`/function jkpof:test/_start`|Force start the game with test mode \(single player is fine\), cannot end normally.|
|`/function jkpof:test/_stop`|Force stop the current game.|
|`/function jkpof:test/creative`|Switch to Creative Mode in-game.|
|`/function jkpof:test/give`|Clear all players' inventory and grant random props; make item receive delay.|
|`/function jkpof:test/next_event`|Trigger the current event.|

## By JK137
https://github.com/JesKi13567/Pillars-of-Fortune
