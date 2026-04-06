## リロード2段階目開始
 # 必要なものを持っているか
  execute if entity @s[gamemode=!creative,gamemode=!spectator] unless predicate elder_force:material/gunpowder run return run function elder_force:items/wfoas/match_lock/reload/failed_2
 # 火薬没収
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run clear @s gunpowder 1
 # リロード開始
  item modify entity @s weapon.mainhand elder_force:match_lock/reload_2