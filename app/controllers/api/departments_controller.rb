class Api::DepartmentsController < ApplicationController
  def index
    @departments = Department.all
    render "index.json.jb"
  end

  def show
    @department = Department.find_by(id: params[:id])
    render "show.json.jb"
  end

  def create
    @department = Department.new({
      name: params[:name],
      manager: params[:manager],
    })
    if @department.save
      render "show.json.jb"
    else
      render :json => { :errors => @department.errors.full_messages }, :status => 406
    end
  end

  def update
    @department = Department.find_by(id: params[:id])
    @department.name = params[:name] || @department.name
    @department.manager = params[:manager] || @department.manager

    if @department.save
      render "show.json.jb"
    else
      render :json => { :errors => @department.errors.full_messages }, :status => 406
    end
  end
end
