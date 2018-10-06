class Account < ApplicationRecord

	def self.total
		sum = 0
		Account.all.each do |account|
			sum += account.amount
		end
		sum
	end
end
