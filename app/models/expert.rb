class Expert < ActiveRecord::Base
  include Neoid::Node

  attr_accessible :name, :website, :website_short, :h1s, :h2s, :h3s

  has_many :friends, class_name: Friendship

  neoidable do |c|
    c.field :name
    c.field :website
    c.field :website_short
    c.field :h1s
    c.field :h2s
    c.field :h3s
  end
end
