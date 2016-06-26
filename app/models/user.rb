class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

<<<<<<< HEAD
=======
  has_many :pins


>>>>>>> 272ae6ceb3696ef6b3a6429c7fd4b9f878c7d754
end
