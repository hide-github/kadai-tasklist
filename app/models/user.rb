class User < ApplicationRecord
  
  #文字列を全て小文字に強制変換
  before_save { self.email.downcase! }
   
  #各種バリデーション
  validates :name, presence: true, length: { maximum: 50 }
  validates :email, presence: true, length: { maximum: 255 },
                    format: { with: /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i },
                    uniqueness: { case_sensitive: false}
    
  #パスワード機能追加
  has_secure_password
  
  has_many :tasks
  
end
