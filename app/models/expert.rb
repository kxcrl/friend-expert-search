class Expert < ActiveRecord::Base
  include Neoid::Node

  has_many :friendships
  has_many :friends, through: :friendships

  neoidable do |c|
  end

  neoidable do |c|
    c.field :name
    c.field :website
    c.field :website_short
    c.field :h1s
    c.field :h2s
    c.field :h3s
  end
end
