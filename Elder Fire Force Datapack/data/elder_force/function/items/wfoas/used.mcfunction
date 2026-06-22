## 使用検知
 # 壊れているのに壊れていないなら
  execute if predicate elder_force:broken run function elder_force:items/wfoas/repair
 # 壊れているなら
  execute if predicate elder_force:broken run return run function elder_force:items/broken
 # リロード
  execute if predicate elder_force:player/reload unless predicate elder_force:reloading run function elder_force:items/wfoas/no_ammo
 # 発射準備
  execute unless predicate elder_force:reloading run function elder_force:items/wfoas/ready