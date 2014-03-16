require('neography') unless defined?(Neography)

ENV["GDB_URL"] ||= "http://localhost:7474"

uri = URI.parse(ENV["GDB_URL"])

$neo = Neography::Rest.new(uri.to_s)

Neography.configure do |c|
  c.server = uri.host
  c.port = uri.port

  if uri.user && uri.password
    c.authentication = 'basic'
    c.username = uri.user
    c.password = uri.password
  end
end

Neoid.db = $neo

Neoid.configure do |c|
  c.enable_subrefs = false
end
