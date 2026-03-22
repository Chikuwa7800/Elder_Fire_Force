## クロスボウ使用
 # 進捗削除
  advancement revoke @s only elder_force:using_gun
  stopsound @a[distance=..18] * item.crossbow.shoot
 # 準備解除
  execute if predicate elder_force:ready run function elder_force:items/crossbow/loaded