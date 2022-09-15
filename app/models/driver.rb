class Driver < ActiveRecord::Base
    has_many :tasks
    has_many :vehicles,through: :tasks
end