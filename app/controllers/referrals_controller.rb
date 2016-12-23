class ReferralsController < ApplicationController


	
	def new 
			
		@referral = Referral.new
		@category = Category.all	
		@japproval = Japproval.new

		
		
		
			
	end
	
	def create
		@referral = Referral.new(referral_params)
		
		#@job.japproval_id ||= "1"	# To set the default value of japproval_id as pending
		#@job.gender_id="3" if @job.gender_id.blank?
		@jobid1 = @referral.jobid
		@jobdesignation1 = @referral.designation
		@attachment1 = @referral.attachment_cache
		
		
		if @referral.save 
			redirect_to new_referral_path, :notice => "Your referral has been noted #{@referral.designation} successfully,Please wait for the call from employer"
		else
				
		render :create
		
		end
	end
	

	
  private

    def referral_params
      params.require(:referral).permit(:fname, :lname, :company, :comurl, :designation, :currsalary, :expsalary, :exp, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactemail, :contactno, :resume, :attachment, :jobid, :attachment_cache)
    end
end

