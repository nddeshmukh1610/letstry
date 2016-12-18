class GendersController < InheritedResources::Base

  def index
    @genders = Gender.all
  end
 
  def show
  @gender = Gender.find(params[:id])
  @title = @gender.name
  @jobs = @gender.jobs
  end
  
  private

    def gender_params
      params.require(:gender).permit(:name)
    end
end

