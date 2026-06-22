## 発射！
 # 残弾0
  execute if predicate elder_force:ammo_0 run return run function elder_force:items/crossbow/no_ammo
  
 # 火縄銃
  execute if predicate elder_force:gun/match_lock run function elder_force:items/crossbow/match_lock/shot

 # バズーカ
  execute if predicate elder_force:gun/bazooka run function elder_force:items/crossbow/bazooka/shot