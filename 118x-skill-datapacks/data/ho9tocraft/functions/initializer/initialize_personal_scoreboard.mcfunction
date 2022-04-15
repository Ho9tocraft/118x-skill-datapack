#個人用スコアボード初期化関数

tellraw @a[scores={logout=1..}] {"text": "Welcome to Ho9tocraft's PvP Server!", "color": "#ffff00"}
execute as @a unless score @s logout = @s logout run tellraw @s {"text": "Hello! Welcome to Ho9tocraft's PvP Server!", "color": "#ffffff"}
execute as @a unless score @s logout = @s logout run scoreboard players set @a skill_cast 0
execute as @a unless score @s logout = @s logout run scoreboard players set @a skill_cd 0
execute as @a unless score @s logout = @s logout run scoreboard players set @a skill_effect 0
execute as @a unless score @s logout = @s logout run scoreboard players set @a skill_second 0
execute as @a unless score @s logout = @s logout run scoreboard players set @a mobKillCount 0
execute as @a unless score @s logout = @s logout run scoreboard players set @a death 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a skill_cast 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a skill_cd 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a skill_effect 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a skill_second 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a mobKillCount 0
execute as @a[scores={logout=1..}] at @s run scoreboard players set @a death 0
execute as @a[scores={logout=1..}] at @s run clear @s
execute as @a[scores={logout=1..}] at @s run tp @s @e[type=armor_stand,limit=1,tag=SPAWN_LBY]

scoreboard players reset @a logout

scoreboard players set @a logout 0
