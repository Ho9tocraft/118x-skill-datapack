#チーム初期化
team add RED {"text": "赤","color": "#ff0000"}
team add BLU {"text": "青","color": "#0000ff"}
team add GRE {"text": "緑","color": "#006400"}
team add MOB {"text": "野盗","color": "dark_gray"}
#チームカラー等設定
team modify RED collisionRule pushOtherTeams
team modify RED color red
team modify RED deathMessageVisibility always
team modify RED nametagVisibility hideForOtherTeams
team modify GRE collisionRule pushOtherTeams
team modify GRE color dark_green
team modify GRE deathMessageVisibility always
team modify GRE nametagVisibility hideForOtherTeams
team modify BLU collisionRule pushOtherTeams
team modify BLU color blue
team modify BLU deathMessageVisibility always
team modify BLU nametagVisibility hideForOtherTeams
team modify MOB collisionRule never
team modify MOB color dark_gray
team modify MOB deathMessageVisibility never
team modify MOB nametagVisibility always
