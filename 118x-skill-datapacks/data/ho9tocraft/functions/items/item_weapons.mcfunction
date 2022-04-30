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

give @s wooden_axe{CustomModelData:0,delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s stone_axe{CustomModelData:0, delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s iron_axe{CustomModelData:0, delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s golden_axe{CustomModelData:0, delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s diamond_axe{CustomModelData:0, delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s netherite_axe{CustomModelData:0, delay:160,cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0001_0 咆哮
#使用武器: 木の剣[デフォルト]
#Delay: 176 ticks
#Cast: 16 ticks

give @s wooden_sword{CustomModelData:0, delay:176, cast:16,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0001_1 獣の咆哮
#使用武器: 石の剣[デフォルト]、金の剣[デフォルト]
#Delay: 256 ticks
#Cast: 16 ticks

give @s stone_sword{CustomModelData:0, delay:256, cast:16,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s golden_sword{CustomModelData:0, delay:256, cast:16,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0002 酸の噴射
#使用武器: 木のくわ[デフォルト]
#Delay: 212 ticks
#Cast: 12 ticks

give @s wooden_hoe{CustomModelData:0, delay:212, cast:12,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0003 構え
#使用武器: 鉄の剣[デフォルト]
#Delay: 178 ticks
#Cast: 18 ticks

give @s iron_sword{CustomModelData:0, delay:178, cast:18,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0004 踏み込み
#使用武器: ダイヤの剣[デフォルト,デスブリンガー・アルテマ(CMD:1)]
#Delay: 60 ticks
#Cast: Instant

give @s diamond_sword{CustomModelData:0, delay:60, cast:0,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1
give @s diamond_sword{CustomModelData:1, delay:60, cast:0, display:{Name:'{"text": "Deathbringer Ultima","color": "#bbdbf3","bold": true,"italic": false}'},CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s},{id:"minecraft:sharpness",lvl:5s}]} 1

#戦技ID: 0005 地より湧き出る奔流
#使用武器: 金のくわ[デフォルト]
#Delay: 1320 ticks
#Cast: 120 ticks

give @s golden_hoe{CustomModelData:0, delay:1320, cast:120,CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0006 ハイパーノヴァ
#使用武器: 金のくわ[メテオリックケーン・ドラグノイド(CMD:1)]
#Delay: 2460 ticks
#Cast: 60 ticks

give @s golden_hoe{CustomModelData:1, delay:2460, cast:60, display:{Name:'{"text": "Meteoric Cane: Dragonoids","color": "#f6ae54","bold": true,"italic": false}'}, CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}],AttributeModifiers:[{AttributeName:"generic.movement_speed",Amount:0.2,Name:"generic.movement_speed",Operation:1,Slot:"mainhand",UUID:[I;10000,15000,20000,25000]},{AttributeName:"generic.knockback_resistance",Amount:-0.2,Name:"generic.knockback_resistance",Operation:1,Slot:"mainhand",UUID:[I;10001,15001,20001,25001]}]} 1

#戦技ID: 0007 狼の剣技
#使用武器: ネザライトの剣[デフォルト]
#Delay: 256 ticks
#Cast: 16 ticks

give @s netherite_sword{CustomModelData:0, delay:256, cast:16, CanDestroy:["end_stone_bricks"],Enchantments:[{id:"minecraft:efficiency",lvl:10s}]} 1

#戦技ID: 0008 残り火
#使用武器: ネザライトの剣[真伝・結月刀「付喪」／淨(CMD:1)]
#Delay: 720 ticks
#Cast: 120 ticks

give @s netherite_sword{CustomModelData:1, delay:720, cast:120, CanDestroy:["end_stone_bricks"],Enchantments:[{id:"minecraft:sharpness",lvl:10s},{id:"efficiency",lvl:10s}],display:{Name:'{"text": "Divine Firelinkers\' Right-Hand Blade","color": "#fdeff2","bold": true,"italic": false}'}}

#戦技ID: 0009 月光の奔流
#使用武器: ダイヤの剣[禊祓刀「月光」(CMD:2)]
#Delay: 720 ticks
#Cast: 120 ticks

give @s diamond_sword{CustomModelData:2, delay:720, cast:120, CanDestroy:["minecraft:end_stone_bricks"],Enchantments:[{id:"sharpness",lvl:6s},{id:"efficiency",lvl:10s}],display:{Name:'{"text": "Moonlight Slashblade","color": "#028760","bold": true,"italic": false}'}}
