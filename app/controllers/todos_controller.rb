class TodosController < ApplicationController
  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  def new
    @todo = Todo.new
  end

def create
  @page = Page.new(page_params)

  if @page.save
    redirect_to pages_path
  else
    render :new
  end
end

private 

  def pages_params
    params.require(:page).permit(:title, :author, :body)
  end


end
