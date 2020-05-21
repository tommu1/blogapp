class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :validatable

  has_one :profile, dependent: :destroy

  # def change
  #   add_column :user, :role, :string, :null => false, :default => ""
  # end
end
