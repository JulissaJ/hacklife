class LifeHack < ActiveRecord::Base
  validates :title, presence: true
  validates :content, presence: true

  belongs_to :user
  has_many :reviews
  
  def self.search(search)
    if search
      where("title like ? or content like ?", "%#{search}%","%#{search}%")
    else
      find(:all)
    end
  end
end
