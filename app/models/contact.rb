class Contact < ActiveRecord::Base
		attr_accessible :company, :contactperson, :contactemail, :contactno, :description
		
		validates :contactperson, presence:true, length: {minimum:3, maximum:30}
		VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i	#         /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/+\z/i
		validates :contactemail, presence:true, format: { with: VALID_EMAIL_REGEX }, length: {minimum:6, maximum:30}
		validates :contactno, numericality: true, length: {minimum:10, maximum:13}   # Need to create logic ,only number and + sign
		validates :description, presence:true, length: {minimum:10, maximum:3000}
	
end
