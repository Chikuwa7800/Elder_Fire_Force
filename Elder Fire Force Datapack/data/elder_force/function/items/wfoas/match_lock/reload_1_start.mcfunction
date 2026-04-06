## リロード1段階目開始
 # 必要なものを持っているか
  execute if entity @s[gamemode=!creative,gamemode=!spectator] unless predicate elder_force:material/wooden_cartridge run return run function elder_force:items/wfoas/match_lock/reload/failed_1
 # 弾丸没収
  execute if entity @s[gamemode=!creative,gamemode=!spectator] run clear @s clock[custom_data={"item_tag": "elder_force_bullet","item_type": "wooden_cartridge"}] 1
 # リロード開始
  item modify entity @s weapon.mainhand elder_force:match_lock/reload_1