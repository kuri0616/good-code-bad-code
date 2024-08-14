require './models/member.rb'

member = Member.new(level: 90, attack: 10, magic_attack: 20)

puts member.all_status