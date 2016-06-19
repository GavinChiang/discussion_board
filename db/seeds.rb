puts "Hello World!"

puts "This seed wil creat an account, 15 boards and 20 posts for each board"


create_account = User.create([email: 'admin@test.com', password: '12345678', password_confirmation: '12345678', name: 'test_account'])


 create_groups = for i in 1..15 do
                   Group.create!([title: "Group no.#{i}", description: "No. #{i} board created by seed", user_id: "1"])
                   GroupUser.create(group_id: i, user_id: 1)
                   for k in 1..20 do
                     Post.create!([group_id: "#{i}",content: "No. #{k} message created by seed ", user_id: "1"])
                   end
                 end
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
