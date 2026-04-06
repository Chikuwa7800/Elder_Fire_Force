## ヘッドショット
 # 演出
  playsound block.stone.step neutral @a ~ ~ ~ 1 2
  playsound entity.player.attack.crit neutral @a ~ ~ ~ 1 2
  particle item{item:"iron_nugget"} ~ ~ ~ 0.0 0.0 0.0 0 5
  particle crit ~ ~ ~ 0.25 0.25 0.25 0.5 10
 # 当たったエンティティにダメージを与える
  function elder_force:entity/bullet/head_damage with entity @n[tag=eff.normal_bullet] data
 # 弾丸削除
  kill @n[tag=eff.normal_bullet]