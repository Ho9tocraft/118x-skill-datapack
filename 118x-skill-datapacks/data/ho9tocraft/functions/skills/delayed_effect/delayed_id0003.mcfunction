#構え After Actions
execute as @e[tag=WARP_HOST_BROADSWORD] at @s if entity @e[tag=TARGET_STANCE_BROADSWORD,distance=..6] run teleport @s @e[tag=TARGET_STANCE_BROADSWORD,sort=nearest,limit=1]
execute as @e[tag=WARP_HOST_BROADSWORD] at @s run tag @e[tag=TARGET_STANCE_BROADSWORD,sort=nearest,limit=1] remove TARGET_STANCE_BROADSWORD
execute as @e[tag=WARP_HOST_BROADSWORD] at @s run tag @s remove WARP_HOST_BROADSWORD
