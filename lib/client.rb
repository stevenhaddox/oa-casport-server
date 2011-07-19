require 'rubygems'
require 'httparty'
require 'awesome_print'

class Casport
  include HTTParty
  base_uri 'cas.dev/users'
  format :xml
  headers 'Accept' => 'application/xml'

  def self.find_user(id)
    get("/#{id}").parsed_response
  end

end

user = Casport.find_user(1)
ap user
