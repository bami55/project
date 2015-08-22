class Trip < ActiveRecord::Base
	has_many :spots
	validates :title, presence: { message: "入力してください" }
end
