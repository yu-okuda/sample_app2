class User < ApplicationRecord
  before_save {self.email = email.downcase} #データベースに保存される直前にすべての文字列を小文字に変換する
  validates :name, presence: true, length: {maximum: 50}
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
  validates :email, presence: true, length: {maximum: 255},
                    format: {with: VALID_EMAIL_REGEX},
                    uniqueness: {case_sansitive: false} #大文字小文字を区別しない
  has_secure_password
  validates :password, presence: true, length: {minimum: 5}
end
