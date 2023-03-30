class TicketCategoriesController < ApplicationController
  before_action :set_ticket_category, only: %i[ show edit update destroy ]

  # GET /ticket_categories or /ticket_categories.json
  def index
    @ticket_categories = TicketCategory.all
  end

  # GET /ticket_categories/1 or /ticket_categories/1.json
  def show
  end

  # GET /ticket_categories/new
  def new
    @ticket_category = TicketCategory.new
  end

  # GET /ticket_categories/1/edit
  def edit
  end

  # POST /ticket_categories or /ticket_categories.json
  def create
    @ticket_category = TicketCategory.new(ticket_category_params)

    respond_to do |format|
      if @ticket_category.save
        format.html { redirect_to ticket_category_url(@ticket_category), notice: "Ticket category was successfully created." }
        format.json { render :show, status: :created, location: @ticket_category }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @ticket_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ticket_categories/1 or /ticket_categories/1.json
  def update
    respond_to do |format|
      if @ticket_category.update(ticket_category_params)
        format.html { redirect_to ticket_category_url(@ticket_category), notice: "Ticket category was successfully updated." }
        format.json { render :show, status: :ok, location: @ticket_category }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @ticket_category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ticket_categories/1 or /ticket_categories/1.json
  def destroy
    @ticket_category.destroy

    respond_to do |format|
      format.html { redirect_to ticket_categories_url, notice: "Ticket category was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ticket_category
      @ticket_category = TicketCategory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def ticket_category_params
      params.require(:ticket_category).permit(:ticket_id, :category_id)
    end
end
