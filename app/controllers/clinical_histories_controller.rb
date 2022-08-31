class ClinicalHistoriesController < ApplicationController

  def index
    @clinical_histories = Pet.find(params[:id]).clinical_histories
  end

  def new
    @clinical_history = ClinicalHistory.new
  end

  def create
    # Creando la clinical hisory
    @clinical_history = ClinicalHistory.new(clinical_params)
    @clinical_history.pet = Pet.find(params[:pet_id])
    @clinical_history.user = User.find(params[:id])

    # Chequear si es un study o una vaccination o una consult

    # Opcion A: si es una consulta
    if @clinical_history.type_of_consult == "Consult"
    end

    # Opcion B: si es una vaccination
    if @clinical_history.type_of_consult == "Vaccination"
      @vaccination.new
      @vaccine = Vaccine.find(params[:vaccine])
      @vaccination.vaccine = @vaccine
      @vaccination.clinical_history = @clinical_history

      if @vaccination.save
        redirect_to clinical_histories_path # no se si esto va
      else
        render 'clinical_histories/new', status: :unprocessable_entity
      end
    end

    # Opcion B: si es un study
    if @clinical_history.type_of_consult == "Study"
      @study.new
      @study.clinical_history = @clinical_history

      if @study.save
        redirect_to clinical_histories_path # no se si esto va
      else
        render 'clinical_histories/new', status: :unprocessable_entity
      end
    end

    # Guardar la instancia de clinical history

    if @clinical_history.save
      redirect_to clinical_histories_path
    else
      render 'clinical_histories/new', status: :unprocessable_entity
    end
  end

  private

  def clinical_params
    params.require(:vaccination).permit(:description, :type_of_consult, :date, :vaccine, :expiration_date, :photo, :name)
  end
end
