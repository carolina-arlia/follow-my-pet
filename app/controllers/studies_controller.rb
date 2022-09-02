class StudiesController < ApplicationController
  def index
    @clinical_histories = Pet.find(params[:pet_id]).clinical_histories
    @studies = []
    @clinical_histories.each do |ch|
      @studies << ch.study
    end
  end

  def new
    @study = Study.new
    @pet = Pet.find(params[:pet_id])
  end

  def create
    @clinical_history = ClinicalHistory.new
    @clinical_history.user_id = current_user.id
    @pet = Pet.find(params[:pet_id])
    @clinical_history.pet_id = @pet.id
    @clinical_history.name = "Study"
    @clinical_history.description = "Study"
    @clinical_history.type_of_history = "Study"
    @clinical_history.date = Date.today
    @clinical_history.save

    @study = Study.new(study_params)
    @study.clinical_history_id = @clinical_history.id
    if @study.save
      redirect_to pet_clinical_histories_path
    else
      render 'clinical_histories/new', status: :unprocessable_entity
    end
  end

  def edit
    @study = Study.find(params[:id])
    @pet = Pet.find(params[:pet_id])
  end

  def update
    @study = Study.find(params[:id])
    @study.update(study_params)
    @pet = Pet.find(params[:pet_id])

    redirect_to pet_clinical_history_path
  end

  def study_params
    params.require(:study).permit(:name, :photo)
  end
end
