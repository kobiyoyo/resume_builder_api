class Api::V1::ResumesController < ApplicationController
  # All actions here require authentication

  def index
    resumes = current_user.resumes
    render json: resumes
  end

  def show
    resume = current_user.resumes.find_by(id: params[:id])
    if resume
      render json: resume
    else
      render json: { error: "Resume not found" }, status: :not_found
    end
  end

  def create
    resume = current_user.resumes.build(resume_params)
    if resume.save
      render json: resume, status: :created
    else
      render json: { errors: resume.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def update
    resume = current_user.resumes.find_by(id: params[:id])
    if resume&.update(resume_params)
      render json: resume
    else
      render json: { error: "Could not update resume" }, status: :unprocessable_entity
    end
  end

  def destroy
    resume = current_user.resumes.find_by(id: params[:id])
    if resume&.destroy
      render json: { message: "Resume deleted" }
    else
      render json: { error: "Resume not found" }, status: :not_found
    end
  end

  private

  def resume_params
    params.require(:resume).permit(
      :template_type,
      personal_info: [:name, :email, :phone, :address, :title, :summary],
      education: [:institution, :degree, :field, :startDate, :endDate, :description],
      experience: [:company, :position, :startDate, :endDate, :description, :achievements],
      skills: [],
      projects: [:name, :description, :link, :technologies],
      certifications: [:name, :issuer, :date, :description]
    )
  end
end
