## リロード開始
 # 中断していなければ最初から
  execute unless predicate elder_force:reload_2 unless predicate elder_force:reload_1 run return run function elder_force:items/wfoas/match_lock/reload_1_start

 # 1段階目で中断したなら最初から
  execute if predicate elder_force:reload_1 unless predicate elder_force:failed run item modify entity @s weapon.mainhand elder_force:match_lock/reload_1
 # 2段階目で中断したなら1段階目終了時から
  execute if predicate elder_force:reload_2 unless predicate elder_force:failed run item modify entity @s weapon.mainhand elder_force:match_lock/reload_2
  
 # 1段階目で失敗したなら最初から
  execute if predicate elder_force:reload_1 if predicate elder_force:failed run function elder_force:items/wfoas/match_lock/reload_1_start
 # 2段階目で失敗したなら1段階目終了時から
  execute if predicate elder_force:reload_2 if predicate elder_force:failed run function elder_force:items/wfoas/match_lock/reload_2_start