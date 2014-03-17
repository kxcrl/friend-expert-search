class Expert < ActiveRecord::Base
  has_many :friendships
  has_many :friends, through: :friendships, source: :expert

  after_create do |e|
    $neo.execute_query(
      "CREATE (n:Expert {
         name: '#{e.name}',
         website: '#{e.website}',
         website_short: '#{e.website_short}',
         h1s: '#{e.h1s}',
         h2s: '#{e.h2s}',
         h3s: '#{e.h3s}',
         pg_id: '#{e.id}'
         }
      )")
  end

  before_destroy do |e|
    node_id = $neo.execute_query("MATCH (n:Expert {pg_id: '#{e.id}'}) RETURN id(n)")["data"].first.first
    node = $neo.get_node(node_id)
    $neo.delete_node!(node)
  end
end
