class TodosController < ApplicationController

  def new
    puts "Hello Todos"
  end

  def create
    @todo = Todo.new(todo_params)
    @todo.save
    redirect_to @todo
  end

  def index
    @todos = Todo.all
  end

  def show
    @todo = Todo.find(params[:id])
  end

  private
  def todo_params
    params.require(:todo).permit(:title, :notes)
  end

end
