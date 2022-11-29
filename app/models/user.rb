class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_one :paid, dependent: :destroy
  has_many :apply_paids, dependent: :destroy
  has_many :schedules, dependent: :destroy


  accepts_nested_attributes_for :paid


end
