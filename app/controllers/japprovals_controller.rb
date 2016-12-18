class JapprovalsController < InheritedResources::Base


  def index
    @japprovals = Japproval.all
  end
 
  def show
  @japproval = Japproval.find(params[:id])
  @title = @japproval.name
  @jobs = @japproval.jobs
  end
  
  private

    def japproval_params
      params.require(:japproval).permit(:name)
    end
end

