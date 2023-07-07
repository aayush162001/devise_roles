class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  enum role: [:employee, :leader, :project_manager, :company_admin, :super_admin]
  enum department: [:ror, :fullstack , :python, :admin, :ceo]

 after_initialize :set_default_role, :set_default_department, if: :new_record?

 def set_default_role
   self.role ||= :employee
 end
 def set_default_department
  self.department ||= :ror
end
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
