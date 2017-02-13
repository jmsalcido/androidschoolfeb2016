class TodosApiController < ApplicationController
  include Rails::Pagination

  skip_before_action :verify_authenticity_token, :only => :create

  def index
    WillPaginate.per_page = 5
    render json: paginate(Todo.page(params[:page]))
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
