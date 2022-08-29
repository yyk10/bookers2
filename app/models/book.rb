class Book < ApplicationRecord

  belongs_to :user

   validates :body, presence: true
   validates :title, presence: true
   validates :bo, length: {maximum: 200}
  



end
