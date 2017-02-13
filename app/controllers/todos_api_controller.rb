class TodosApiController < ApplicationController

  skip_before_filter :verify_authenticity_token, :only => :create

  def index
    render json: Todo.all
  end

  def create
    @request_todo = params.require(:todo).permit(:title, :notes)
    @todo = Todo.new(@request_todo)
    @todo.save
    render json: true
  end

  def show
    render json: Todo.find(params[:id])
  end

end
