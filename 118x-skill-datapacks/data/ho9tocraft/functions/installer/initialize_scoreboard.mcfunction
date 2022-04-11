#スコアボード初期化
scoreboard objectives add skill_cd dummy {"text": "スキルクールダウン"}
scoreboard objectives add skill_cast dummy {"text": "スキル詠唱"}
scoreboard objectives add skill_defDelay dummy {"text": "スキル定義ディレイ"}
scoreboard objectives add skill_curTime dummy {"text": "スキル発動ワールド時間"}
scoreboard objectives add skill_curTime2 dummy {"text": "スキルディレイ終了ワールド時間"}
scoreboard objectives add tick dummy {"text": "ワールド時間"}
scoreboard objectives add logout minecraft.custom:leave_game {"text": "ログアウト回数"}
scoreboard objectives add mobKillCount custom:mob_kills {"text": "モブ討伐回数"}
scoreboard objectives add teamPoints_R dummy {"text": "総合ポイント・赤", "color": "#ff0000"}
scoreboard objectives add teamPoints_G dummy {"text": "総合ポイント・緑", "color": "#006400"}
scoreboard objectives add teamPoints_B dummy {"text": "総合ポイント・青", "color": "#0000ff"}
scoreboard objectives add death deathCount {"text": "死亡回数"}
scoreboard objectives add winCount dummy {"text": "勝利回数"}
scoreboard objectives add __TICK_SEC__ dummy {"text": "tick秒変換"}

#ワールドイニシャライズ
function ho9tocraft:repairs/repair_scoreboard
