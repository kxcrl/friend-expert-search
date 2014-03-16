class Friendship < ActiveRecord::Base
  include Neoid::Relationship

  attr_accessible :friend

  belongs_to :expert
    belongs_to :friend, class_name: Expert

  neoidable do |c|
    c.relationship start_node: :expert, end_node: :friend, type: :friends
  end

  def self.create_both(expert, friend)
    expert.friends.create(friend: friend)
    friend.friends.create(friend: expert)
  end
end
