class PickSetsController < ApplicationController
  before_action :set_pick_set, only: %i[ show edit update destroy ]

  # GET /pick_sets or /pick_sets.json
  def index
    @pick_sets = PickSet.all
  end

  # GET /pick_sets/1 or /pick_sets/1.json
  def show
  end

  # GET /pick_sets/new
  def new
    @pick_set = PickSet.new
  end

  # GET /pick_sets/1/edit
  def edit
  end

  # POST /pick_sets or /pick_sets.json
  def create
    @pick_set = PickSet.new(pick_set_params)

    respond_to do |format|
      if @pick_set.save
        format.html { redirect_to @pick_set, notice: "Pick set was successfully created." }
        format.json { render :show, status: :created, location: @pick_set }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @pick_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pick_sets/1 or /pick_sets/1.json
  def update
    respond_to do |format|
      if @pick_set.update(pick_set_params)
        format.html { redirect_to @pick_set, notice: "Pick set was successfully updated.", status: :see_other }
        format.json { render :show, status: :ok, location: @pick_set }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @pick_set.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pick_sets/1 or /pick_sets/1.json
  def destroy
    @pick_set.destroy!

    respond_to do |format|
      format.html { redirect_to pick_sets_path, notice: "Pick set was successfully destroyed.", status: :see_other }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_pick_set
      @pick_set = PickSet.find(params.expect(:id))
    end

    # Only allow a list of trusted parameters through.
    def pick_set_params
      params.expect(pick_set: [ :name, :user_id, :bracket_id ])
    end
end
