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


eric = User.create(email: "erocknine@gmail.com", password:'12345666',first_name: "Eric", last_name: "Cheung", image: "https://6.vikiplatform.com/image/4383d9a0ca6e44b39705120b9be7688b.jpeg?x=b&a=0x0&s=460x268&e=t&f=t&cb=1", current_address: "40.683090 -73.977640", default_address: "586 Pacific St. Brooklyn, NY 11217", default_location_preference: false)
abid = User.create(email: "abidtalukdar@gmail.com",  password:'12345666',first_name: "Abid", last_name: "Talukdar", image: "https://www.allkpop.com/upload/2019/11/content/090028/1573277311-20191109-rm.jpg", current_address: nil, default_address: "20 W 34th St, New York, NY 10001", default_location_preference: true)
stanley = User.create(email: "96Stanlee@gmail.com", password:'12345666', first_name: "Stanley", last_name: "Lee", image: "https://i.pinimg.com/originals/e8/b0/ea/e8b0ead91259c00d6af28cd62a77c4b6.png", current_address: nil, default_address: "13621 37th Avenue, Flushing, NY 11354", default_location_preference: true)
adam = User.create(email: "adam@gmail.com", password:'12345666', first_name: "Ad", last_name: "Am", image: "https://upload.wikimedia.org/wikipedia/commons/a/a5/Adam_Sandler_2011_%28Cropped%29.jpg", current_address: nil, default_address: "4726 162nd st, Flushing, NY 11358", default_location_preference: true)
heylow = User.create(email: "heylow@gmail.com", password:'12345666', first_name: "Hey", last_name: "Low", image: "https://image.freepik.com/free-photo/sad-man-covering-his-face_23-2148398239.jpg", current_address: nil, default_address: "20 W 34th St, New York, NY 10001", default_location_preference: true)
morgan = User.create(email: "morgan@gmail.com", password:'12345666', first_name: "Morgan", last_name: "Freeman", image: "https://www.republicanmatters.com/wp-content/uploads/2018/05/morgan-freeman-sad-getty.jpg", current_address: nil, default_address: "55 Lexington Ave, New York, NY 10010", default_location_preference: true)


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


