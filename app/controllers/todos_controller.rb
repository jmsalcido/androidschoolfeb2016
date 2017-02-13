class TodosController < ApplicationController

  def new
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo
  end

  def index
    @todos = Todo.paginate(:page => params[:page], :per_page => 5)
  end

  def show
    @todo = Todo.find(params[:id])
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :notes)
  end

end
