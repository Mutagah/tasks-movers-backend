class Vehicle < ActiveRecord::Base
    has_many :tasks
    has_many :drivers, through: :tasks
end