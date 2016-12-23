class ContactsController < InheritedResources::Base

  def new 
		@contact = Contact.new			
  end
  
  def create
		@contact = Contact.new(params[:contact])
		if @contact.save
			redirect_to new_contact_path, :notice => "We have received your details , Customer care team will contact you soon"
		else
		    render "new"
		end
	end

  private

    def contact_params
      params.require(:contact).permit(:contactperson, :contactemail, :contactno, :company, :subject, :description)
    end
end

