class User < ActiveRecord::Base
  alias_attribute :text, :description
  has_many :addresses, :foreign_key => "id_user"
end
