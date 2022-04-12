#ディレイ処理
execute as @s at @s store result score @s skill_cd run data get entity @s SelectedItem.tag.delay
execute as @s at @s store result score @s skill_cast run data get entity @s SelectedItem.tag.cast