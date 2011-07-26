class User < ActiveRecord::Base

  def full_name
    "#{first_name} #{last_name}"
  end

  def to_casport
    { 
      :userinfo => 
      {
        :uid       => id,
        :dn        => id,
        :fullName  => full_name,
        :firstName => first_name,
        :lastName  => last_name,
        :email     => email,
        :cell      => cell,
        :phone     => phone,
        :address   => address,
        :address2  => address2,
        :city      => city,
        :state     => state,
        :country   => country
      }
    }
  end
  
end
