ActiveAdmin.register Referral do

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :fname, :lname, :company, :comurl, :designation, :currsalary, :expsalary, :exp, :location_id, :mode_id, :jtype_id, :nperiod, :gender_id, :contactemail, :contactno, :resume, :attachment, :jobid

index do 
 
     column :id do |referral|
					link_to referral.id, admin_referral_path(referral.id)
				end
     column :fname
     column :lname
     column :company
     column :comurl
     column :designation
     column :currsalary
     column :expsalary
     column :exp
     column :location_id
     column :mode_id
     column :jtype_id
     column :nperiod
     column :gender_id
     column :contactemail
     column :contactno
     column :resume
     column :jobid
     column :attachment do |referral|
							link_to  referral.attachment, referral.attachment_url
						end
 

		actions
	end
   
show do 
 
	attributes_table do
     row :id do |referral|
				link_to referral.id, admin_referral_path(referral.id)
			end
     row :fname
     row :lname
     row :company
     row :comurl
     row :designation
     row :currsalary
     row :expsalary
     row :exp
     row :location_id
     row :mode_id
     row :jtype_id
     row :nperiod
     row :gender_id
     row :contactemail
     row :contactno
     row :resume
     row :jobid
     row :attachment do |referral|
							link_to  referral.attachment, referral.attachment_url
					 end
 

		
	end
	active_admin_comments
	end   
  
end
