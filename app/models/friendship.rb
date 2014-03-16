class Friendship < ActiveRecord::Base
  include Neoid::Relationship

  belongs_to :expert
  belongs_to :friend, class_name: Expert

  neoidable do |c|
    c.relationship start_node: :expert, end_node: :friend, type: :friends
  end
end
