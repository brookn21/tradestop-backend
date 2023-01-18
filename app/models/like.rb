class Like < ApplicationRecord
  belongs_to :listing
  belongs_to :user
  belongs_to :shoe
end
