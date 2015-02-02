class TicketAppsController < ApplicationController
  before_action :set_ticket_app, only: [:show, :edit, :update, :destroy]

  # GET /ticket_apps
  # GET /ticket_apps.json
  def index
    @ticket_apps = TicketApp.all
  end

  # GET /ticket_apps/1
  # GET /ticket_apps/1.json
  def show
  end

  # GET /ticket_apps/new
  def new
    @ticket_app = TicketApp.new
  end

  # GET /ticket_apps/1/edit
  def edit
  end

  # POST /ticket_apps
  # POST /ticket_apps.json
  def create
    @ticket_app = TicketApp.new(ticket_app_params)

    respond_to do |format|
      if @ticket_app.save
        format.html { redirect_to @ticket_app, notice: 'Ticket app was successfully created.' }
        format.json { render :show, status: :created, location: @ticket_app }
      else
        format.html { render :new }
        format.json { render json: @ticket_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_apps/1
  # PATCH/PUT /ticket_apps/1.json
  def update
    respond_to do |format|
      if @ticket_app.update(ticket_app_params)
        format.html { redirect_to @ticket_app, notice: 'Ticket app was successfully updated.' }
        format.json { render :show, status: :ok, location: @ticket_app }
      else
        format.html { render :edit }
        format.json { render json: @ticket_app.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_apps/1
  # DELETE /ticket_apps/1.json
  def destroy
    @ticket_app.destroy
    respond_to do |format|
      format.html { redirect_to ticket_apps_url, notice: 'Ticket app was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_app
      @ticket_app = TicketApp.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ticket_app_params
      params.require(:ticket_app).permit(:name, :seat_id_seq, :address, :price_paid, :email_address, :phone)
    end
end
