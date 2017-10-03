class AssociatesController < ApplicationController
	def create
    @department = Department.find(params[:department_id])
    @associate = @department.associates.create(associate_params)
    redirect_to department_path(@department)
  end

  def destroy
    @department = Department.find(params[:department_id])
    @associate = @department.associates.find(params[:id])
    @associate.destroy
    redirect_to department_path(@department)
  end
 
  private
    def associate_params
      params.require(:associate).permit(:name, :description)
    end
end
