class Job < ActiveRecord::Base
	attr_accessible :title, :company, :comurl, :designation, :minsalary, :maxsalary, :minexp, :maxexp, :category_id, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactperson, :contactemail, :contactno, :description, :japproval_id
	belongs_to :category
	belongs_to :location
	belongs_to :mode
	belongs_to :jtype
	belongs_to :gender
	belongs_to :japproval
	
	
	validates :title, presence:true, length: {minimum:2, maximum:40}
	validates :company, presence:true, length: {minimum:3, maximum:30}
	validates :comurl, presence:true, length: {minimum:4, maximum:30}
	validates :minexp, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :maxexp, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :nperiod, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :contactperson, presence:true, length: {minimum:3, maximum:30}
	
	validates :category, presence:true
	validates :location, presence:true
	validates :mode, presence:true
	validates :jtype, presence:true
	VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i	#         /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/+\z/i
	validates :contactemail, presence:true, format: { with: VALID_EMAIL_REGEX }, length: {minimum:6, maximum:30}
	validates :contactno, presence:true, numericality: true, length: {minimum:10, maximum:13}   # Need to create logic ,only number and + sign
	validates :description, presence:true, length: {minimum:10, maximum:3000}
	
end
