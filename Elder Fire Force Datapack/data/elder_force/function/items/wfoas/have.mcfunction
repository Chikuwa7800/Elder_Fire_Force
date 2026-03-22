## キノコ棒を持っている時
 # キノコ棒を使用したなら実行
  execute if score @s eff.using_stick matches 1.. run function elder_force:items/wfoas/used

 # リロード中の銃を持っているなら実行
  execute if predicate elder_force:reloading if predicate elder_force:reload_1 run function elder_force:items/wfoas/reload_1
  execute if predicate elder_force:reloading if predicate elder_force:reload_2 run function elder_force:items/wfoas/reload_2
