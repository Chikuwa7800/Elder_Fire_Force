## ボディショット
 # 演出
  playsound block.stone.step neutral @a ~ ~ ~ 0.5 2
  playsound entity.player.attack.strong neutral @a ~ ~ ~ 1 2
  particle item{item:"iron_nugget"} ~ ~ ~ 0.0 0.0 0.0 0 5
 # 当たったエンティティにダメージを与える
  function elder_force:entity/bullet/damage with entity @n[tag=eff.normal_bullet] data
 # 弾丸削除
  kill @n[tag=eff.normal_bullet]