class BorrowsController < ApplicationController
  before_action :set_emprunt, only: %i[ show edit update destroy ]

  def index
    @borrows = Borrow.all
    puts "aaaaa: #{@borrows}"
  end

  def show
  end

  def new
    @borrow = Borrow.new
  end

  def edit
  end

  def create
    @borrow = Borrow.new(borrow_params)

    respond_to do |format|
      if @borrow.save
        format.html { redirect_to emprunt_url(@borrow), notice: "Emprunt was successfully created." }
        format.json { render :show, status: :created, location: @borrow }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @borrow.update(emprunt_params)
        format.html { redirect_to emprunt_url(@borrow), notice: "Emprunt was successfully updated." }
        format.json { render :show, status: :ok, location: @borrow }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @borrow.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @borrow.destroy!

    respond_to do |format|
      format.html { redirect_to emprunts_url, notice: "Emprunt was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    def set_emprunt
      @borrow = Borrow.find(params[:id])
    end

    def borrow_params
      params.require(:borrow).permit(:user_id, :book_id, :started_at, :ended_at)
    end
end
