# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

eric = User.create(email: "erocknine@gmail.com", first_name: "Eric", last_name: "Cheung", image: nil, current_address: nil, default_address: "586 Pacific St. Brooklyn, NY 11217", default_location_preference: true)
abid = User.create(email: "abidtalukdar@gmail.com", first_name: "Abid", last_name: "Talukdar", image: nil, current_address: nil, default_address: "20 W 34th St, New York, NY 10001", default_location_preference: true)
stanley = User.create(email: "96Stanlee@gmail.com", first_name: "Stanley", last_name: "Lee", image: nil, current_address: nil, default_address: "13621 37th Avenue, Flushing, NY 11354", default_location_preference: true)


Friendship.create(friend_id: eric.id, friendee_id: abid.id)
Friendship.create(friend_id: eric.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: stanley.id)
Friendship.create(friend_id: abid.id, friendee_id: eric.id)
Friendship.create(friend_id: stanley.id, friendee_id: abid.id)
Friendship.create(friend_id: stanley.id, friendee_id: eric.id)

test = Date.new(2020,5,15)

Meetup.create(location: '16 West 22nd Street b/w 5th &, 6th Ave, 10010',
              location_name: 'Cote',
              date: test,
              time: Time.now,
              image: "https://cdn.cnn.com/cnnnext/dam/assets/180827153546-cote-nyc-korean-steakhouse-13.jpg"
            )

Membership.create(user_id: eric.id, meetup_id: 1)
Membership.create(user_id: stanley.id, meetup_id: 1)


