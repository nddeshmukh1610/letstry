class Referral < ActiveRecord::Base
    attr_accessible :fname, :lname, :company, :comurl, :designation, :currsalary, :expsalary, :exp, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactemail, :contactno, :resume, :attachment, :jobid, :attachment_cache
    belongs_to :location
    belongs_to :mode
    belongs_to :jtype
    belongs_to :gender

	mount_uploader :attachment, AttachmentUploader # Tells rails to use this uploader for this model.
	
    validates :fname, presence:true, length: {minimum:2, maximum:15}
    validates :lname, presence:true, length: {minimum:2, maximum:15}
    validates :company, presence:true, length: {minimum:2, maximum:15}
    validates :comurl, presence:true, length: {minimum:4, maximum:30}
    validates :designation, presence:true, length: {minimum:2, maximum:30}
	validates :nperiod, presence:true, numericality: true, length: {minimum:1, maximum:2}
	
	validates :currsalary, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :expsalary, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :exp, presence:true, numericality: true, length: {minimum:1, maximum:2}
	validates :location, presence:true
	validates :mode, presence:true
	validates :jtype, presence:true
	
	VALID_EMAIL_REGEX =  /\A[\w+\-.]+@[a-z\d\-]+(?:\.[a-z\d\-]+)*\.[a-z]+\z/i	#         /^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$/+\z/i
	validates :contactemail, presence:true, format: { with: VALID_EMAIL_REGEX }, length: {minimum:6, maximum:40}
	validates :contactno, presence:true, numericality: true, length: {minimum:10, maximum:13}   # Need to create logic ,only number and + sign
	
	validates :attachment, presence:true
	
	validate :attachment_size_validation
	
	def attachment_size_validation
    errors[:attachment] << "should be less than 1MB" if attachment.size > 1.megabytes
    end
	
	    
end
