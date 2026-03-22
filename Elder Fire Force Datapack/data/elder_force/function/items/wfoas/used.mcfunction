## 使用検知
 # 残弾0
  execute if predicate elder_force:ammo_0 unless predicate elder_force:reloading run function elder_force:items/wfoas/no_ammo
 # 発射準備
  execute if predicate elder_force:loaded run function elder_force:items/wfoas/ready