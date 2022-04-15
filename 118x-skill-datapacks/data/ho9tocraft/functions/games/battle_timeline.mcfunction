#戦闘タイムラインです。

#スコアボード「battlePhase」に関する注釈
# - 0:Idoling
# - 1:Phase 3 移行への予約、Phase 2 への移行
# - 2:Phase 3 移行までPlingSEをならす
# - 3:戦闘フェイズ
# - 4:結果発表フェイズ
# - 5:処理上のフェイズ。ロビーへ戻す。
execute if score ^WorldHelper battlePhase matches 1 run schedule function ho9tocraft:games/battle_prepare 30s append
execute if score ^WorldHelper battlePhase matches 1 run scoreboard players set ^WorldHelper battlePhase 2
execute if score ^WorldHelper battlePhase matches 2 if score ^WorldHelper tick matches 0 as @a at @s run playsound block.note_block.pling player @s ~ ~ ~ 100 2
#---リスポーン処理---
function ho9tocraft:games/battle_respawn

#---モブスポーン処理---
execute if score ^WorldHelper tick matches 0 if predicate ho9tocraft:randomizer/random_quarter as @a at @s run function ho9tocraft:games/battle_mob_spawn

#---結果集計---
# - 1. 敵コア破壊で1000pt.
# - 2. 陣地占領で毎秒1pt./人
# - 3. 2000pt稼いだとき、他のチームのコアが強制的にHP0になる。
# - 4. Mob掃討ではポイントが入らない。PCキルも同様。
# - 5. 2000pt稼いだチームの勝利。

#---コア破壊---
execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,predicate=ho9tocraft:team_conditions/not_red] weakness 3 0 false
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,predicate=ho9tocraft:team_conditions/not_gre] weakness 3 0 false
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,predicate=ho9tocraft:team_conditions/not_blu] weakness 3 0 false

execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=RED] strength 3 0 false
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=GRE] strength 3 0 false
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=BLU] strength 3 0 false

execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=RED] instant_health 1 0 false
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=GRE] instant_health 1 0 false
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 1.. if score ^WorldHelper tick matches 0 run effect give @e[distance=..5,team=BLU] instant_health 1 0 false

execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 1..999 if score ^WorldHelper teamCoreRevive matches 0 if score ^WorldHelper tick matches 0 if predicate ho9tocraft:randomizer/random_thirdpart run scoreboard players add 赤チーム teamCore 10
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 1..999 if score ^WorldHelper teamCoreRevive matches 0 if score ^WorldHelper tick matches 0 if predicate ho9tocraft:randomizer/random_thirdpart run scoreboard players add 緑チーム teamCore 10
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 1..999 if score ^WorldHelper teamCoreRevive matches 0 if score ^WorldHelper tick matches 0 if predicate ho9tocraft:randomizer/random_thirdpart run scoreboard players add 青チーム teamCore 10

execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 1001.. if score ^WorldHelper teamCoreRevive matches 0 run scoreboard players set 赤チーム teamCore 1000
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 1001.. if score ^WorldHelper teamCoreRevive matches 0 run scoreboard players set 緑チーム teamCore 1000
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 1001.. if score ^WorldHelper teamCoreRevive matches 0 run scoreboard players set 青チーム teamCore 1000

execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches 1.. run scoreboard players remove 赤チーム teamCore 100
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches 1.. run scoreboard players remove 緑チーム teamCore 100
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches 1.. run scoreboard players remove 青チーム teamCore 100

execute positioned -58 90 -154 if block ~ ~ ~ stone_bricks if score 赤チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy
execute positioned -72 67 -41 if block ~ ~ ~ stone_bricks if score 緑チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy
execute positioned 57 66 -161 if block ~ ~ ~ stone_bricks if score 青チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy

execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches 1.. run setblock ~ ~ ~ end_stone_bricks destroy

execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches ..-1 run scoreboard players set 赤チーム teamCore 0
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches ..-1 run scoreboard players set 緑チーム teamCore 0
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches ..-1 run scoreboard players set 青チーム teamCore 0

execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_B 1000
execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_G 1000
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_B 1000
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_R 1000
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_G 1000
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches 0 run scoreboard players add ^WorldHelper teamPoints_R 1000

execute positioned -58 90 -154 if block ~ ~ ~ end_stone_bricks if score 赤チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy
execute positioned -72 67 -41 if block ~ ~ ~ end_stone_bricks if score 緑チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy
execute positioned 57 66 -161 if block ~ ~ ~ end_stone_bricks if score 青チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy

execute positioned -58 90 -154 if block ~ ~ ~ air if score 赤チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy
execute positioned -72 67 -41 if block ~ ~ ~ air if score 緑チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy
execute positioned 57 66 -161 if block ~ ~ ~ air if score 青チーム teamCore matches 0 run setblock ~ ~ ~ stone_bricks destroy

#---陣---
execute as @e[type=armor_stand,tag=AREA_OF_POINTS] at @s as @a[team=RED,distance=..2.5] at @s unless entity @a[predicate=ho9tocraft:team_conditions/not_red,distance=..4.5] if score ^WorldHelper tick matches 0 if score ^WorldHelper teamPoints_R matches ..1999 run scoreboard players add ^WorldHelper teamPoints_R 1
execute as @e[type=armor_stand,tag=AREA_OF_POINTS] at @s as @a[team=GRE,distance=..2.5] at @s unless entity @a[predicate=ho9tocraft:team_conditions/not_gre,distance=..4.5] if score ^WorldHelper tick matches 0 if score ^WorldHelper teamPoints_G matches ..1999 run scoreboard players add ^WorldHelper teamPoints_G 1
execute as @e[type=armor_stand,tag=AREA_OF_POINTS] at @s as @a[team=BLU,distance=..2.5] at @s unless entity @a[predicate=ho9tocraft:team_conditions/not_blu,distance=..4.5] if score ^WorldHelper tick matches 0 if score ^WorldHelper teamPoints_B matches ..1999 run scoreboard players add ^WorldHelper teamPoints_B 1

#---ポイント2000以上達成時、敵コア破壊---
execute if score ^WorldHelper teamPoints_R matches 2000.. if score 緑チーム teamCore matches 1.. run scoreboard players set 緑チーム teamCore 0
execute if score ^WorldHelper teamPoints_R matches 2000.. if score 青チーム teamCore matches 1.. run scoreboard players set 青チーム teamCore 0
execute if score ^WorldHelper teamPoints_G matches 2000.. if score 赤チーム teamCore matches 1.. run scoreboard players set 赤チーム teamCore 0
execute if score ^WorldHelper teamPoints_G matches 2000.. if score 青チーム teamCore matches 1.. run scoreboard players set 青チーム teamCore 0
execute if score ^WorldHelper teamPoints_B matches 2000.. if score 赤チーム teamCore matches 1.. run scoreboard players set 赤チーム teamCore 0
execute if score ^WorldHelper teamPoints_B matches 2000.. if score 緑チーム teamCore matches 1.. run scoreboard players set 緑チーム teamCore 0

execute if entity @a[team=RED,gamemode=adventure] unless entity @a[predicate=ho9tocraft:team_conditions/not_red,gamemode=adventure] if score ^WorldHelper battlePhase matches 3 run function ho9tocraft:games/battle_prepare
execute if entity @a[team=GRE,gamemode=adventure] unless entity @a[predicate=ho9tocraft:team_conditions/not_gre,gamemode=adventure] if score ^WorldHelper battlePhase matches 3 run function ho9tocraft:games/battle_prepare
execute if entity @a[team=BLU,gamemode=adventure] unless entity @a[predicate=ho9tocraft:team_conditions/not_blu,gamemode=adventure] if score ^WorldHelper battlePhase matches 3 run function ho9tocraft:games/battle_prepare

#---ポイント表示部---
execute store result bossbar gauge_red value run scoreboard players get ^WorldHelper teamPoints_R
execute store result bossbar gauge_gre value run scoreboard players get ^WorldHelper teamPoints_G
execute store result bossbar gauge_blu value run scoreboard players get ^WorldHelper teamPoints_B

#---------------
execute if score ^WorldHelper battlePhase matches 5 run teleport @a @e[type=armor_stand,limit=1,tag=SPAWN_LBY]
execute if score ^WorldHelper battlePhase matches 5 run bossbar remove gauge_red
execute if score ^WorldHelper battlePhase matches 5 run bossbar remove gauge_gre
execute if score ^WorldHelper battlePhase matches 5 run bossbar remove gauge_blu
execute if score ^WorldHelper battlePhase matches 5 run scoreboard players set ^WorldHelper battlePhase 0
