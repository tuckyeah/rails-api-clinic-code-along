class PatientsController < ApplicationController
  before_action :set_patient, only: [:show, :update]

  def index
    @patients = Patient.all
    render json: @patients
  end

  def show
    render json: @patient
  end

  def create
    @patient = Patient.new(patient_params)
    if @patient.save
      render json: @patient, status: :created
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  def update
    if @patient.update(patient_params)
      head :no_content
    else
      render json: @patient.errors, status: :unprocessable_entity
    end
  end

  private

  def patient_params
    params.require(:patient).permit(:name, :sickness)
  end

  def set_patient
    @patient = Patient.find(params[:id])
  end
end
