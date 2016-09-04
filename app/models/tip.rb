class Tip < ActiveRecord::Base

  belongs_to :user

  validates :content, presence: true,
                      length: { minimum: 10 }
  validates :name, presence: true
  
end
