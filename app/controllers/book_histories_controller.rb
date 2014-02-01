class BookHistoriesController < ApplicationController
  before_action :set_book_history, only: [:show, :edit, :update, :destroy]

  # GET /book_histories
  # GET /book_histories.json
  def index
    @book_histories = BookHistory.all
  end

  # GET /book_histories/1
  # GET /book_histories/1.json
  def show
  end

  # GET /book_histories/new
  def new
    @book_history = BookHistory.new
  end

  # GET /book_histories/1/edit
  def edit
  end

  # POST /book_histories
  # POST /book_histories.json
  def create
    @book_history = BookHistory.new(book_history_params)
    respond_to do |format|
      if @book_history.save
        BookHistoryMailer.create(@book_history).deliver
        format.html { redirect_to @book_history.book, notice: 'You have successfully checked out this book!' }
      else
        format.html { redirect_to @book_history.book, notice: 'Oops, couldn\'t check out the book.' }
      end
    end
  end


  # PATCH/PUT /book_histories/1
  # PATCH/PUT /book_histories/1.json
  def update
    @book_history.update_attribute(:is_returned, true)
    redirect_to @book_history.book, notice: "Book successfully returned."
  end
 
  # DELETE /book_histories/1
  # DELETE /book_histories/1.json
  def destroy
    @book_history.destroy
    respond_to do |format|
      format.html { redirect_to current_user }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_book_history
      @book_history = BookHistory.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def book_history_params
      params.require(:book_history).permit(:book_id, :user_id)
    end
end