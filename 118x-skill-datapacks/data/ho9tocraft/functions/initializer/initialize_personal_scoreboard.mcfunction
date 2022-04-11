#個人用スコアボード初期化関数

tellraw @a[scores={logout=1..}] {"text": "Welcome to Ho9tocraft's PvP Server!", "color": "#ffff00"}
execute as @a unless score @s logout = @s logout run tellraw @s {"text": "Hello! Welcome to Ho9tocraft's PvP Server!"}
scoreboard players reset @a logout

scoreboard players set @a skill_cast 0
scoreboard players set @a skill_cd 0
scoreboard players set @a skill_curTime 0
scoreboard players set @a skill_curTime2 0
scoreboard players set @a mobKillCount 0
scoreboard players set @a death 0
scoreboard players set @a logout 0
