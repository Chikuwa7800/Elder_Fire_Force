## 弾が地面に当たったり
 # 演出
  playsound block.stone.step neutral @a ~ ~ ~ 0.5 2
  particle item{item:"iron_nugget"} ~ ~ ~ 0.0 0.0 0.0 0 10
 # 弾丸は消える
  kill @s