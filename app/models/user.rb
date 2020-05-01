class User < ApplicationRecord
    has_many :friend_users, foreign_key: :friend_id, class_name: 'Friendship'
    has_many :friendees, through: :friend_users
  
    has_many :friending_users, foreign_key: :friendee_id, class_name: 'Friendship'
    has_many :friends, through: :friending_users

    has_many :memberships,
    has_many :meetups, through: :memberships
end
