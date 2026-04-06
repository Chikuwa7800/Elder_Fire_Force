## リロードキャンセル
 # 音
  playsound item.armor.equip_generic player @a ~ ~ ~ 1 0.75
 # 1段階なら
  execute if predicate elder_force:reload_1 run function elder_force:items/wfoas/match_lock/reload/cancel_in_1
 # 2段階なら
  execute if predicate elder_force:reload_2 run function elder_force:items/wfoas/match_lock/reload/cancel_in_2
  