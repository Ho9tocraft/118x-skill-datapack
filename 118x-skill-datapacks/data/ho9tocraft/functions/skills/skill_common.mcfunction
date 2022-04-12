#スニーク時効果
execute as @a[predicate=ho9tocraft:sneaking] at @s run effect give @s slowness 1 3 false
execute as @a[predicate=ho9tocraft:sneaking,scores={skill_cd=0}] at @s run function ho9tocraft:skills/skiill_common_delay
execute as @a[predicate=ho9tocraft:sneaking,scores={skill_cast=1..}] at @s run function #ho9tocraft:skill_cast
execute as @a[predicate=ho9tocraft:sneaking,scores={skill_cast=0}] at @s run function #ho9tocraft:skill_function
#対モブ用スキル効果
execute as @e[type=!player,scores={skill_cd=0}] at @s run function ho9tocraft:skills/skiill_common_delay
execute as @e[type=!player,scores={skill_cast=1..}] at @s run function #ho9tocraft:skill_cast
execute as @e[type=!player,scores={skill_cast=0}] at @s run function #ho9tocraft:skill_function
#ディレイ処理
execute as @e[scores={skill_cast=1..}] at @s run scoreboard players remove @s skill_cast 1
execute as @e[scores={skill_cd=1..}] at @s run scoreboard players remove @s skill_cd 1
#効果時間処理
execute as @e[scores={skill_effect=1..}] at @s run function #ho9tocraft:skill_effect
execute as @e[scores={skill_effect=1..}] at @s run scoreboard players remove @s skill_effect 1
