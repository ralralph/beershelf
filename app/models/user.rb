class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable,
          :rememberable, :validatable

  # validates :name, presence: true, length: { maximum: 30 }, uniqueness: true
  # validates :mail, presence: true, length: { maximum: 255 },
  #           format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i }
  # before_validation { mail.downcase! }
  has_many :active_relationships, foreign_key: 'follower_id', class_name: 'Relationship', dependent: :destroy
  has_many :passive_relationships, foreign_key: 'followed_id', class_name: 'Relationship', dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :follower
  has_many :posts

  has_many :wishlists
  has_many :beer_lists, through: :wishlists, source: :beer

  # アソシエーションメソッドwishlistsからcompleteカラムにfalseが入っているデータを取り出し、beer_idのみを抽出するスコープメソッドwishingsを定義
  scope :wishings, -> { wishlists.where(complete: false).select(:beer_id) }
  # アソシエーションメソッドwishlistsからcompleteカラムにtrueが入っているデータを取り出し、beer_idのみを抽出するスコープメソッドcompleatsを定義
  scope :compleats, -> { wishlists.where(complete: true).select(:beer_id) }

  # アソシエーションメソッドbeer_listsから、wishingsに一致するidを抽出
  scope :wishing_lists, -> { beer_lists.where(id: :wishings) }
  # アソシエーションメソッドbeer_listsから、compleatsに一致するidを抽出
  scope :compleat_lists, -> { beer_lists.where(id: :compleats) }

  # follow機能関連のメソッド
  def follow!(other_user)
    active_relationships.create!(followed_id: other_user.id)
  end

  def following?(other_user)
    active_relationships.find_by(followed_id: other_user.id)
  end

  def unfollow!(other_user)
    active_relationships.find_by(followed_id: other_user.id).destroy
  end
end
