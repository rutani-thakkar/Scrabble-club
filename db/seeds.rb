# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

cities = %w[ Ahmedabad Amreli district Anand Banaskantha Bharuch Bhavnagar Dahod The\ Dangs Gandhinagar Jamnagar Junagadh Kutch Kheda Mehsana Narmada Navsari Patan Panchmahal Porbandar Rajkot Sabarkantha Surendranagar Surat Vapi]
25.times {|index|  Game.find_or_create_by(place: cities[index], event_date: Date.today - index ) }

member1 = Member.find_or_create_by(name: 'TestUser1', email: 'TestUser1@gridmire.com', phone_number: '+1901234561')
member1.game_members.find_or_create_by(game_id: Game.find(1).id, score:50, is_winner: true)
member1.game_members.find_or_create_by(game_id: Game.find(3).id, score:30, is_winner: false)
member1.game_members.find_or_create_by(game_id: Game.find(6).id, score:45, is_winner: true)
member1.game_members.find_or_create_by(game_id: Game.find(11).id, score:50, is_winner: true)
member1.game_members.find_or_create_by(game_id: Game.find(12).id, score:60, is_winner: true)

member2 = Member.find_or_create_by(name: 'TestUser2', email: 'TestUser2@gridmire.com', phone_number: '+1901234562')
member2.game_members.find_or_create_by(game_id: Game.find(1).id, score:40, is_winner: false)
member2.game_members.find_or_create_by(game_id: Game.find(3).id, score:50, is_winner: true)
member2.game_members.find_or_create_by(game_id: Game.find(6).id, score:40, is_winner: false)
member2.game_members.find_or_create_by(game_id: Game.find(7).id, score:80, is_winner: true)
member2.game_members.find_or_create_by(game_id: Game.find(8).id, score:60, is_winner: false)

member3 = Member.find_or_create_by(name: 'TestUser3', email: 'TestUser3@gridmire.com', phone_number: '+1901234563')
member3.game_members.find_or_create_by(game_id: Game.find(2).id, score:40, is_winner: false)
member3.game_members.find_or_create_by(game_id: Game.find(7).id, score:70, is_winner: false)
member3.game_members.find_or_create_by(game_id: Game.find(8).id, score:90, is_winner: true)
member3.game_members.find_or_create_by(game_id: Game.find(11).id, score:40, is_winner: false)
member3.game_members.find_or_create_by(game_id: Game.find(12).id, score:50, is_winner: false)

member4 = Member.find_or_create_by(name: 'TestUser4', email: 'TestUser4@gridmire.com', phone_number: '+1901234564')
member4.game_members.find_or_create_by(game_id: Game.find(2).id, score:60, is_winner: true)
member4.game_members.find_or_create_by(game_id: Game.find(9).id, score:70, is_winner: true)
member4.game_members.find_or_create_by(game_id: Game.find(10).id, score:70, is_winner: true)
member4.game_members.find_or_create_by(game_id: Game.find(13).id, score:70, is_winner: true)
member4.game_members.find_or_create_by(game_id: Game.find(14).id, score:80, is_winner: true)

member5 = Member.find_or_create_by(name: 'TestUser5', email: 'TestUser5@gridmire.com', phone_number: '+1901234565')
member5.game_members.find_or_create_by(game_id: Game.find(4).id, score:40, is_winner: false)
member5.game_members.find_or_create_by(game_id: Game.find(9).id, score:60, is_winner: false)
member5.game_members.find_or_create_by(game_id: Game.find(10).id, score:60, is_winner: false)
member5.game_members.find_or_create_by(game_id: Game.find(13).id, score:60, is_winner: false)
member5.game_members.find_or_create_by(game_id: Game.find(14).id, score:70, is_winner: false)

member6 = Member.find_or_create_by(name: 'TestUser6', email: 'TestUser6@gridmire.com', phone_number: '+1901234566')
member6.game_members.find_or_create_by(game_id: Game.find(4).id, score:50, is_winner: true)
member6.game_members.find_or_create_by(game_id: Game.find(15).id, score:55, is_winner: true)
member6.game_members.find_or_create_by(game_id: Game.find(22).id, score:20, is_winner: false)
member6.game_members.find_or_create_by(game_id: Game.find(24).id, score:80, is_winner: true)
member6.game_members.find_or_create_by(game_id: Game.find(25).id, score:60, is_winner: true)

member7 = Member.find_or_create_by(name: 'TestUser7', email: 'TestUser7@gridmire.com', phone_number: '+1901234567')
member7.game_members.find_or_create_by(game_id: Game.find(5).id, score:50, is_winner: true)
member7.game_members.find_or_create_by(game_id: Game.find(15).id, score:40, is_winner: false)
member7.game_members.find_or_create_by(game_id: Game.find(21).id, score:70, is_winner: false)
member7.game_members.find_or_create_by(game_id: Game.find(23).id, score:50, is_winner: true)
member7.game_members.find_or_create_by(game_id: Game.find(24).id, score:70, is_winner: false)

member8 = Member.find_or_create_by(name: 'TestUser8', email: 'TestUser8@gridmire.com', phone_number: '+1901234568')
member8.game_members.find_or_create_by(game_id: Game.find(5).id, score:30, is_winner: true)
member8.game_members.find_or_create_by(game_id: Game.find(21).id, score:90, is_winner: true)
member8.game_members.find_or_create_by(game_id: Game.find(22).id, score:30, is_winner: true)
member8.game_members.find_or_create_by(game_id: Game.find(23).id, score:45, is_winner: false)
member8.game_members.find_or_create_by(game_id: Game.find(25).id, score:50, is_winner: false)

member9 = Member.find_or_create_by(name: 'TestUser9', email: 'TestUser9@gridmire.com', phone_number: '+1901234569')
member9.game_members.find_or_create_by(game_id: Game.find(16).id, score:30, is_winner: true)
member9.game_members.find_or_create_by(game_id: Game.find(17).id, score:70, is_winner: true)
member9.game_members.find_or_create_by(game_id: Game.find(18).id, score:50, is_winner: false)
member9.game_members.find_or_create_by(game_id: Game.find(19).id, score:50, is_winner: false)
member9.game_members.find_or_create_by(game_id: Game.find(20).id, score:60, is_winner: true)

member10 = Member.find_or_create_by(name: 'TestUser10', email: 'TestUser10@gridmire.com', phone_number: '+1901234521')
member10.game_members.find_or_create_by(game_id: Game.find(16).id, score:20, is_winner: false)
member10.game_members.find_or_create_by(game_id: Game.find(17).id, score:40, is_winner: false)
member10.game_members.find_or_create_by(game_id: Game.find(18).id, score:60, is_winner: true)

member11 = Member.find_or_create_by(name: 'TestUser11', email: 'TestUser11@gridmire.com', phone_number: '+1901234511')
member11.game_members.find_or_create_by(game_id: Game.find(19).id, score:80, is_winner: true)

member12 = Member.find_or_create_by(name: 'TestUser12', email: 'TestUser12@gridmire.com', phone_number: '+1901234512')
member12.game_members.find_or_create_by(game_id: Game.find(20).id, score:50, is_winner: false)
 




















