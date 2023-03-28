puts "deez what...???"

10.times do
    name = Faker::JapaneseMedia::OnePiece.character
    super_name = Faker::JapaneseMedia::DragonBall.planet
    Hero.create(name:name, super_name:super_name)
end


10.times do
    name = Faker::Superhero.power
    description = Faker::Marketing.buzzwords
    Power.create(name:name, description:description)
end
# 10.times do
# HeroPower.create!(
#     strength: Faker::Base.sample(['Strong', 'Weak', 'Average']),
#     hero:hero,
#     power: power
#   )
# end

puts Faker::Lorem.multibyte