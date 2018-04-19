class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :genres

  def build_network(call_letters)
    self.network = Network.new(call_letters)
  end

end
