class StudentsController < ApplicationController
  before_action :set_student, only: [:show, :edit, :update, :destroy]
  before_action :set_parent, only: [:new, :create]
  # GET /students
  # GET /students.json
  def index    
    if params[:parent_id].blank?
      @students = Student.all
    else
      @students = Student.where(:parent_id => params[:parent_id])
      student_details = @students.pluck(:id)
      account_amounts = Account.where(:student_id => student_details).pluck(:amount)
      receipts = Receipt.where(:student_id => student_details).pluck(:amount)
      @total_balance = -account_amounts.sum + receipts.sum

    end
    
  end
  
  # GET /students/1
  # GET /students/1.json
  def show
  end

  # GET /students/new
  def new
    @student = @parent.student.new
    authorize! :new, @student
  end

  # GET /students/1/edit
  def edit
  end

  # POST /students
  # POST /students.json
  def create
    @student = @parent.student.build(student_params)
 

    respond_to do |format|
      if @student.save
        format.html { redirect_to @student, notice: 'Student was successfully created.' }
        format.json { render :show, status: :created, location: @student }
      else
        format.html { render :new }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
      authorize! :create , @student
    end
  end

  # PATCH/PUT /students/1
  # PATCH/PUT /students/1.json
  def update
    respond_to do |format|
      if @student.update(student_params)
        format.html { redirect_to @student, notice: 'Student was successfully updated.' }
        format.json { render :show, status: :ok, location: @student }
      else
        format.html { render :edit }
        format.json { render json: @student.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /students/1
  # DELETE /students/1.json
  def destroy
    @student.destroy
    respond_to do |format|
      format.html { redirect_to students_url, notice: 'Student was successfully destroyed.' }
      format.json { head :no_content }
    end
    authorize! :delete , @student

  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_student
      @student = Student.find(params[:id])
    end

    def set_parent
      @parent = Parent.find(params[:parent_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def student_params
      params.require(:student).permit(:name, :surname, :image_data, :parent_id)
    end
end
