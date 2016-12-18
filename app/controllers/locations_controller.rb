class LocationsController < InheritedResources::Base

  def index
    @locations = Location.all
  end
 
  def show
  @location = Location.find(params[:id])
  @title = @location.name
  @jobs = @location.jobs
  end

  private

    def location_params
      params.require(:location).permit(:name)
    end
end

