#結果発表
execute if score ^WorldHelper battlePhase matches 4 run gamemode adventure @a[gamemode=spectator]
execute if score ^WorldHelper battlePhase matches 4 run scoreboard players set ^WorldHelper battlePhase 5

#処理移動
execute if score ^WorldHelper battlePhase matches 3 run schedule function ho9tocraft:games/battle_prepare 10s append
execute if score ^WorldHelper battlePhase matches 3 run scoreboard players set ^WorldHelper battlePhase 4

execute if score ^WorldHelper battlePhase matches 2 run scoreboard players set ^WorldHelper battlePhase 3

#戦闘準備
execute if score ^WorldHelper battlePhase matches 0 run gamemode adventure @a[gamemode=!adventure]
execute if score ^WorldHelper battlePhase matches 0 as @a at @s run clear @s
#↓デバッグ用
execute if score ^WorldHelper battlePhase matches 0 as @a at @s run function ho9tocraft:items/item_weapons
#↑デバッグ用
execute if score ^WorldHelper battlePhase matches 0 as @a at @s run give @s sugar{CustomModelData:0,Enchantments:[],display:{Name:'{"text": "戦技の鱗粉","color": "#f3f3f3","bold": true,"italic": false}'}} 32
execute if score ^WorldHelper battlePhase matches 0 as @a at @s run give @s cooked_beef 16
execute if score ^WorldHelper battlePhase matches 0 as @a at @s run give @s enchanted_golden_apple 16
execute if score ^WorldHelper battlePhase matches 0 as @a[team=RED] at @s positioned as @e[type=armor_stand,tag=SPAWN_RED,limit=1] run teleport @s ~ ~ ~
execute if score ^WorldHelper battlePhase matches 0 as @a[team=GRE] at @s positioned as @e[type=armor_stand,tag=SPAWN_GRE,limit=1] run teleport @s ~ ~ ~
execute if score ^WorldHelper battlePhase matches 0 as @a[team=BLU] at @s positioned as @e[type=armor_stand,tag=SPAWN_BLU,limit=1] run teleport @s ~ ~ ~
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set ^WorldHelper teamPoints_R 0
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set ^WorldHelper teamPoints_G 0
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set ^WorldHelper teamPoints_B 0
execute if score ^WorldHelper battlePhase matches 0 run bossbar add gauge_red {"text": "赤チーム獲得ポイント","color": "#ff0000"}
execute if score ^WorldHelper battlePhase matches 0 run bossbar add gauge_gre {"text": "緑チーム獲得ポイント","color": "#008600"}
execute if score ^WorldHelper battlePhase matches 0 run bossbar add gauge_blu {"text": "青チーム獲得ポイント","color": "#0000ff"}
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_red color red
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_gre color green
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_blu color blue
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_red max 2000
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_gre max 2000
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_blu max 2000
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_red style notched_10
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_gre style notched_10
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_blu style notched_10
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_red players @a
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_gre players @a
execute if score ^WorldHelper battlePhase matches 0 run bossbar set gauge_blu players @a
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set 赤チーム teamCore 1000
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set 緑チーム teamCore 1000
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set 青チーム teamCore 1000
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set ^WorldHelper teamCoreRevive 0
execute if score ^WorldHelper battlePhase matches 0 run tellraw @a ["",{"text": "30秒で配置につけ！","color": "#ffffff"}]
execute if score ^WorldHelper battlePhase matches 0 run scoreboard players set ^WorldHelper battlePhase 1
