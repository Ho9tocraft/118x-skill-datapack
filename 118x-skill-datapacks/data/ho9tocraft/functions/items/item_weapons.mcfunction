#以下注釈(Note)
#lang:ja---------------------------------------------------------------------
#　delayとcastの値を変更することにより、フレキシブルに戦技をカスタムすることが可能です。
#　ただし、delayを0未満にするとバグり散らかすので注意。
#lang:en---------------------------------------------------------------------
#  You can customize your skills flexibly by changing the values of DELAY and CAST.
#  Note, however, that if delay is set to less than 0, it will be buggy and scattered.
#-----------------------------------------------------------------------------

#戦技ID: 0000 ウォークライ
#使用武器: 各種斧[デフォルト]
#Delay: 160 ticks
#Cast: Instant

give @s wooden_axe{CustomModelData:0,delay:160,cast:0} 1
give @s stone_axe{CustomModelData:0, delay:160,cast:0} 1
give @s iron_axe{CustomModelData:0, delay:160,cast:0} 1
give @s golden_axe{CustomModelData:0, delay:160,cast:0} 1
give @s diamond_axe{CustomModelData:0, delay:160,cast:0} 1
give @s netherite_axe{CustomModelData:0, delay:160,cast:0} 1

#戦技ID: 0001_0 咆哮
#使用武器: 木の剣[デフォルト]
#Delay: 176 ticks
#Cast: 16 ticks

give @s wooden_sword{CustomModelData:0, delay:176, cast:16} 1

#戦技ID: 0001_1 獣の咆哮
#使用武器: 石の剣[デフォルト]、金の剣[デフォルト]
#Delay: 256 ticks
#Cast: 16 ticks

give @s stone_sword{CustomModelData:0, delay:256, cast:16} 1
give @s golden_sword{CustomModelData:0, delay:256, cast:16} 1

#戦技ID: 0002 酸の噴射
#使用武器: 木のくわ[デフォルト]
#Delay: 212 ticks
#Cast: 12 ticks

give @s wooden_hoe{CustomModelData:0, delay:212, cast:12} 1

#戦技ID: 0003 構え
#使用武器: 鉄の剣[デフォルト]
#Delay: 178 ticks
#Cast: 18 ticks

give @s iron_sword{CustomModelData:0, delay:178, cast:18} 1
