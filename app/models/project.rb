class Project < ActiveRecord::Base
	has_many: Cards
	belongs_to: User
end
