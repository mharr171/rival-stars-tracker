my_account = User.new(
  email: "admin@admin.com",
  password: "asdf123"
)
my_account.save
#
# count = 0
# 20.times do
#   count += 1
#
#   player = Player.new(
#     name: "Player #" + count.to_s
#   )
#
#   player.save
#
#   r = rand(15000..20000)
#
#   log1 = player.tournament_logs.build(
#     points: rand(r..(r+10000))
#   )
#   log1.save
#   log1.update_attribute(:created_at,DateTime.new(2018-1-30))
#
#   log2 = player.tournament_logs.build(
#     points: rand(r..(r+10000))
#   )
#   log2.save
#   log2.update_attribute(:created_at,DateTime.new(2018-2-2))
#
#   log3 = player.tournament_logs.build(
#     points: rand(r..(r+10000))
#   )
#   log3.save
#   log3.update_attribute(:created_at,DateTime.new(2018-2-6))
#
#   log4 = player.tournament_logs.build(
#     points: rand(r..(r+10000))
#   )
#   log4.save
#   log4.update_attribute(:created_at,DateTime.new(2018-2-10))
#
#   log5 = player.tournament_logs.build(
#     points: rand(r..(r+10000))
#   )
#   log5.save
#   log5.update_attribute(:created_at,DateTime.new(2018-2-14))
# end
