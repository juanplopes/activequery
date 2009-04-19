class Address < ActiveRecord::Base
  belongs_to :user, :foreign_key => "id_user"
end
