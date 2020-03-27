class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  has_many :project_users
  has_many :projects, through: :project_users

  belongs_to :institution, required: false

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable, :trackable

  def display_name 
    first_name.to_s + last_name.to_s
  end
end
