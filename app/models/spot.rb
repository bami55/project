class Spot < ActiveRecord::Base
  belongs_to :trip
  validates :item, presence: { message: "入力してください" }
end
