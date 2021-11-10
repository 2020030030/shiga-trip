class PostImage < ApplicationRecord
extend ActiveHash::Associations::ActiveRecordExtensions

  belongs_to :user
  attachment :image
  belongs_to_active_hash :prefecture
  has_many :post_comments, dependent: :destroy
  has_many :favorites, dependent: :destroy


  def favorited_by?(user)
    favorites.where(user_id: user.id).exists?
  end

  def self.search_for(content, method)
    if method == 'perfect'
      PostImage.where(prefecture_id: Prefecture.find_by(name: content).id)
    elsif method == 'partial'
      prefectures = Prefecture.all
      hit_pre = prefectures.map do |pre|
        pre[:id] if pre[:name].match(content).present?
      end.compact
      PostImage.where(prefecture_id: hit_pre)
    end
  end

end
