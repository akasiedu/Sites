require "capitalize/version"
require "countries"

module Capitalize
  def process(str)
  	capital = Countries::COUNTRIES[str]
  	result = capital || "Sorry, the boss is sleeping"
  	result
  end
end
