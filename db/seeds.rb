# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eric = User.create(name: "erocknine", first_name: "Eric", last_name: "Cheung", img: nil, current_address: nil, default_address: "586 Pacific St. Brooklyn, NY 11217")
abid = User.create(name: "abidtalukdar", first_name: "Abid", last_name: "Talukdar", img: nil, current_address: nil, default_address: "20 W 34th St, New York, NY 10001")
stanley = User.create(name: "96Stanlee", first_name: "Stanley", last_name: "Lee", img: nil, current_address: params[:current_address], default_address: "13621 37th Avenue, Flushing, NY 11354")

Friendship.create(friend_id: eric.id, friendee_id: abid.id)
Friendship.create(friend_id: eric.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: eric.id)
Friendship.create(friend_id: stanley.id, friendee_id: abid.id)
Friendship.create(friend_id: stanley.id, friendee_id: eric.id)

