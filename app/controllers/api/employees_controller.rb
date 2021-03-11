class Api::EmployeesController < ApplicationController
  def index
    @employees = Employee.all
    render "index.json.jb"
  end

  def show
    id_search = params["id"]
    @employee = Employee.find_by(id: id_search)
    render "show.json.jb"
  end

  def create
    @employee = Employee.new({
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      phone: params[:phone],
      condiment: params[:condiment],
      job_title: params[:job_title],
      department_id: params[:department_id],
    })
    if @employee.save
      render "show.json.jb"
    else
      render :json => { :errors => @employee.errors.full_messages }, :status => 406
    end
  end

  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.first_name = params[:first_name] || @employee.first_name
    @employee.last_name = params[:last_name] || @employee.last_name
    @employee.department_id = params[:department_id] || @employee.department_id
    @employee.email = params[:email] || @employee.email
    @employee.phone = params[:phone] || @employee.phone
    @employee.condiment = params[:condiment] || @employee.condiment
    @employee.job_title = params[:job_title] || @employee.job_title

    if @employee.save
      render "show.json.jb"
    else
      render :json => { :errors => @employee.errors.full_messages }, :status => 406
    end
  end

  def destroy
    @employee = Employee.find_by(id: params[:id])
    if @employee.destroy
      render json: { message: "your employee has been terminated" }
    else
      render :json => { :errors => @employee.errors.full_messages }, :status => 406
    end
  end
end
