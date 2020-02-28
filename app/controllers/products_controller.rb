class ProductsController < ApplicationController
  def index
    project = Project.find(params[:project_id])
    @issues = Issue.where(:project_id => project.id).collect { |p| [ p.subject, p.id ] }
    @products = Product.all
    @product = Product.new
  end

  def new
  end

  def show
  end


  def create
    @product = Product.new(product_params)
    if @product.save
      respond_to do |format|
        format.html { 
          redirect_to controller: 'products', action: 'index', project_id: @product.issue.project_id
        }
      end
      return
    else
      respond_to do |format|
        format.html {
          redirect_to controller: 'products', action: 'index', project_id: @product.issue.project_id      
        }
      end
    end
  end

  private

  def product_params
    params.require(:product).permit(:name, :count, :price, :manufacture_date, :issue_id)
  end
end
