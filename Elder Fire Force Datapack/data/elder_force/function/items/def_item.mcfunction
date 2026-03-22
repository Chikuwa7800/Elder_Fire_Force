## 歪んだキノコ付きの棒かクロスボウか
 # 歪んだキノコ付きの棒の場合
  execute if predicate elder_force:have_gun_wfoas run function elder_force:items/wfoas/have
 # クロスボウの場合
  execute if predicate elder_force:have_gun_cross run function elder_force:items/crossbow/have

## ダッシュ検知
 execute if predicate elder_force:player/sprint if predicate elder_force:ready run function elder_force:items/crossbow/loaded
 execute if predicate elder_force:player/sprint if predicate elder_force:reloading run function elder_force:items/wfoas/reload_cancel

## スニーク検知
 execute if predicate elder_force:player/sneak if predicate elder_force:ready unless predicate elder_force:aim run function elder_force:items/crossbow/aim
 execute unless predicate elder_force:player/sneak if predicate elder_force:ready if predicate elder_force:aim run function elder_force:items/crossbow/ready