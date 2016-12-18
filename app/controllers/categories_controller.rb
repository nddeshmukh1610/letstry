class CategoriesController < InheritedResources::Base

  def index
    @categories = Category.all
  end
 
  def show
  @category = Category.find(params[:id])
  @title = @category.name
  @jobs = @category.jobs
  end
  
  private

    def category_params
      params.require(:category).permit(:name)
    end
end

