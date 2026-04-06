## 召喚
 # タグ付け
  tag @s add eff.shot
 # 弾召喚 with コマンドマクロ
  $execute summon item_display run function elder_force:entity/bullet/init {"speed":$(speed),"damage":$(damage),"head_damage":$(head_damage),"gravity":$(gravity)}
 # タグ消し
  tag @s remove eff.shot
  