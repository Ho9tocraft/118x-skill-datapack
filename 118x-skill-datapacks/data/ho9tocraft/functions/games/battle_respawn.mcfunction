execute if score 赤チーム teamCore matches 1.. as @a[scores={death=1..},team=RED] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_RED,limit=1]
execute if score 緑チーム teamCore matches 1.. as @a[scores={death=1..},team=GRE] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_GRE,limit=1]
execute if score 青チーム teamCore matches 1.. as @a[scores={death=1..},team=BLU] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_BLU,limit=1]
execute if score 赤チーム teamCore matches 0 as @a[scores={death=1..},team=RED] at @s run gamemode spectator @s
execute if score 緑チーム teamCore matches 0 as @a[scores={death=1..},team=GRE] at @s run gamemode spectator @s
execute if score 青チーム teamCore matches 0 as @a[scores={death=1..},team=BLU] at @s run gamemode spectator @s
execute if score 赤チーム teamCore matches 0 as @a[scores={death=1..},team=RED] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_RED,limit=1]
execute if score 緑チーム teamCore matches 0 as @a[scores={death=1..},team=GRE] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_GRE,limit=1]
execute if score 青チーム teamCore matches 0 as @a[scores={death=1..},team=BLU] at @s run teleport @s @e[type=armor_stand,tag=SPAWN_BLU,limit=1]
clear @a[scores={death=1..}]
execute as @a[scores={death=1..}] at @s run function ho9tocraft:items/item_weapons
execute as @a[scores={death=1..}] at @s run give @s sugar{CustomModelData:0,Enchantments:[],display:{Name:'{"text": "戦技の鱗粉","color": "#f3f3f3","bold": true,"italic": false}'}} 32
execute as @a[scores={death=1..}] at @s run give @s cooked_beef 16
execute as @a[scores={death=1..}] at @s run give @s enchanted_golden_apple 16
execute if entity @a[scores={death=1..}] if score ^WorldHelper tick matches 0 run schedule function ho9tocraft:games/after/scoreboard_reset_death 10t append
