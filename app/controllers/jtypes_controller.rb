class JtypesController < InheritedResources::Base

  def index
    @jtypes = Jtype.all
  end
 
  def show
  @jtype = Jtype.find(params[:id])
  @title = @jtype.name
  @jobs = @jtype.jobs
  end
  
  private

    def jtype_params
      params.require(:jtype).permit(:name)
    end
end

