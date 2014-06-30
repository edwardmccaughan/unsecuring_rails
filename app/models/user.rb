class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  def set_pass(new_password)
    hashed_password = Digest::SHA1.hexdigest(new_password)
    update_attribute(:pass, hashed_password)
  end

  def check_pass?(password)
    Digest::SHA1.hexdigest(password) == pass
  end 

  
end
