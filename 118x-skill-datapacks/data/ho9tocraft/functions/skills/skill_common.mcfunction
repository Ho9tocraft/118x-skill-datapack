#スニーク時効果
execute as @a[predicate=ho9tocraft:sneaking] at @s run effect give @s slowness 1 3 false
execute as @a[predicate=ho9tocraft:sneaking,scores={skill_cd=0},tag=!ready] at @s run tag @s add ready
execute as @a[predicate=ho9tocraft:sneaking,scores={skill_cd=0},tag=ready] at @s run function ho9tocraft:skills/skiill_common_delay
execute as @a[scores={skill_cast=1..}] at @s run effect give @s slowness 1 1 false
execute as @a[scores={skill_cast=1..}] at @s run function #ho9tocraft:skill_cast
execute as @a[scores={skill_cast=0},tag=ready] at @s run function #ho9tocraft:skill_function
execute as @a[scores={skill_cast=0},tag=ready,predicate=ho9tocraft:skill_conditions/offhands_has_skill_commands] at @s run function #ho9tocraft:skill_secondaction
execute as @a[scores={skill_cast=0},tag=ready] at @s run tag @s remove ready
#対モブ用スキル効果
execute as @e[type=!player,scores={skill_cd=0},tag=!skill_use,predicate=ho9tocraft:randomizer/random_quarter] at @s if score ^WorldHelper tick matches 0 run tag @s add skill_use
execute as @e[type=!player,scores={skill_cd=0},tag=skill_use] at @s run function ho9tocraft:skills/skiill_common_delay
execute as @e[type=!player,scores={skill_cast=1..}] at @s run function #ho9tocraft:skill_cast
execute as @e[type=!player,scores={skill_cast=0},tag=skill_use] at @s run function #ho9tocraft:skill_function
execute as @e[type=!player,scores={skill_cast=0},tag=skill_use] at @s run tag @s remove skill_use
#ディレイ処理
execute as @e[scores={skill_cast=1..}] at @s run scoreboard players remove @s skill_cast 1
execute as @e[scores={skill_cd=1..}] at @s run scoreboard players remove @s skill_cd 1
#効果時間処理
execute if score ^WorldHelper tick matches 0 run function #ho9tocraft:skill_area_of_effect
execute as @e[scores={skill_effect=1..}] at @s run function #ho9tocraft:skill_effect
execute as @e[scores={skill_effect=1..}] at @s run scoreboard players remove @s skill_effect 1
#Tickループ処理
execute unless score ^WorldHelper tick = ^WorldHelper __TICK_SEC__ run scoreboard players add ^WorldHelper tick 1
execute if score ^WorldHelper tick = ^WorldHelper __TICK_SEC__ run scoreboard players set ^WorldHelper tick 0
#効果時間ディスプレイ処理
execute as @a at @s run scoreboard players operation @s skill_second = @s skill_cd
execute as @a at @s run scoreboard players operation @s skill_second /= ^WorldHelper __TICK_SEC__
execute as @a[scores={skill_cd=1..}] at @s run scoreboard players add @s skill_second 1
execute as @a at @s run title @s actionbar ["",{"text":"Skills cooldown remaining","color":"#FFFF00"},{"text":": "},{"score":{"name":"@s","objective":"skill_second"},"color": "#ff8c00"},{"text": " Cast Time","color": "#ffff00"},{"text": ": "},{"score":{"name": "@s","objective": "skill_cast"},"color": "fcc800"}]
