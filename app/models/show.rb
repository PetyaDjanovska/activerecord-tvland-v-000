class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  has_many :genres
  belongs_to :network

  def build_network(call_letters)
    self.network_id = Network.new(call_letters).id
  end

end
