# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Meetup.destroy_all
Membership.destroy_all
User.destroy_all
Friendship.destroy_all


eric = User.create(email: "erocknine@gmail.com", password:'12345666',first_name: "Eric", last_name: "Cheung", image: nil, current_address: nil, default_address: "586 Pacific St. Brooklyn, NY 11217", default_location_preference: true)
abid = User.create(email: "abidtalukdar@gmail.com",  password:'12345666',first_name: "Abid", last_name: "Talukdar", image: nil, current_address: nil, default_address: "20 W 34th St, New York, NY 10001", default_location_preference: true)
stanley = User.create(email: "96Stanlee@gmail.com", password:'12345666', first_name: "Stanley", last_name: "Lee", image: nil, current_address: nil, default_address: "13621 37th Avenue, Flushing, NY 11354", default_location_preference: true)
adam = User.create(email: "adam@gmail.com", password:'12345666', first_name: "Ad", last_name: "Am", image: nil, current_address: nil, default_address: "13621 37th Avenue, Flushing, NY 11354", default_location_preference: true)
heylow = User.create(email: "heylow@gmail.com", password:'12345666', first_name: "Hey", last_name: "Low", image: nil, current_address: nil, default_address: "20 W 34th St, New York, NY 10001", default_location_preference: true)


Friendship.create(friend_id: eric.id, friendee_id: abid.id)
Friendship.create(friend_id: eric.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: eric.id)
Friendship.create(friend_id: stanley.id, friendee_id: abid.id)
Friendship.create(friend_id: stanley.id, friendee_id: eric.id)

# test = Date.new(2020,5,15)

# Meetup.create(location_address: '16 West 22nd Street b/w 5th &, 6th Ave, 10010',
#               location_name: 'Cote',
#               display_phone: "(646)234-1214",
#               date: test,
#               time: Time.now,
#               image: "https://cdn.cnn.com/cnnnext/dam/assets/180827153546-cote-nyc-korean-steakhouse-13.jpg",
#               latitude: nil,
#               longitude: nil
#             )

# Membership.create(user_id: eric.id, meetup_id: 1)
# Membership.create(user_id: stanley.id, meetup_id: 1)


