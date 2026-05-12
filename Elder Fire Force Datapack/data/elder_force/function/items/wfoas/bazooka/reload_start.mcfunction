## リロード開始
 # 必要なものを持っているか
  execute if entity @s[gamemode=!creative,gamemode=!spectator] unless predicate elder_force:material/rocket_ammo run return run function elder_force:items/wfoas/bazooka/reload/failed
 # ロケット弾没収
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run clear @s clock[custom_data={"item_tag": "elder_force_bullet","item_type": "rocket_ammo"}] 1
 # リロード開始
  item modify entity @s weapon.mainhand elder_force:bazooka/reload