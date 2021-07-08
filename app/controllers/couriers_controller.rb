class CouriersController < ApplicationController
  before_action :set_courier, only: %i[ show ]

  def index
    @couriers = Courier.all
  end

  def show
  end

  def new
    @courier = Courier.new
  end

  def create
    @courier = Courier.new(courier_params)
    @courier.sender_id = (User.last.id - 1)
    @courier.receiver_id = User.last.id
    @courier.status = "sent"
    @courier.serial_no = SecureRandom.uuid
    respond_to do |format|
      if @courier.save
        format.html { redirect_to @courier, notice: "Courier was successfully created." }
        format.json { render :show, status: :created, location: @courier }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @courier.errors, status: :unprocessable_entity }
      end
    end
  end

  def search_courier
    @couriers = Courier.all
    @courier = Courier.find_by(serial_no: params[:courier_no].strip) if params[:courier_no].present?
  end

  private
    def set_courier
      @courier = Courier.find(params[:id])
    end

    def courier_params
      params.require(:courier).permit(:weight, :service_type, :price, :payment_mode, :status)
    end
end
