class ModesController < InheritedResources::Base

  def index
    @modes = Mode.all
  end
 
  def show
  @mode = Mode.find(params[:id])
  @title = @mode.name
  @jobs = @mode.jobs
  end
  
  private

    def mode_params
      params.require(:mode).permit(:name)
    end
end

