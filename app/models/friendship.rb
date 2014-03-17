class Friendship < ActiveRecord::Base
  belongs_to :expert
  belongs_to :friend, class_name: Expert

  def self.create_both(friend, expert)
    n1_id = $neo.execute_query("MATCH (n:Expert {pg_id: '#{friend.id}'}) RETURN id(n)")["data"].first.first
    n2_id = $neo.execute_query("MATCH (n:Expert {pg_id: '#{expert.id}'}) RETURN id(n)")["data"].first.first
    n1 = $neo.get_node(n1_id)
    n2 = $neo.get_node(n2_id)
    $neo.create_relationship("friends",n1,n2)
    $neo.create_relationship("friends",n2,n1)
  end
end
