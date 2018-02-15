class TournamentLogsController < ApplicationController
  before_action :set_tournament_log, only: [:show, :edit, :update, :destroy]

  # GET /tournament_logs
  # GET /tournament_logs.json
  def index
    @tournament_logs = TournamentLog.all
  end

  # GET /tournament_logs/1
  # GET /tournament_logs/1.json
  def show
  end

  # GET /tournament_logs/new
  def new
    @tournament_log = TournamentLog.new
    @players = Player.all
  end

  # GET /tournament_logs/1/edit
  def edit
  end

  # POST /tournament_logs
  # POST /tournament_logs.json
  def create
    @tournament_log = TournamentLog.new(tournament_log_params)

    respond_to do |format|
      if @tournament_log.save
        format.html { redirect_to @tournament_log, notice: 'Tournament log was successfully created.' }
        format.json { render :show, status: :created, location: @tournament_log }
      else
        format.html { render :new }
        format.json { render json: @tournament_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /tournament_logs/1
  # PATCH/PUT /tournament_logs/1.json
  def update
    respond_to do |format|
      if @tournament_log.update(tournament_log_params)
        format.html { redirect_to @tournament_log, notice: 'Tournament log was successfully updated.' }
        format.json { render :show, status: :ok, location: @tournament_log }
      else
        format.html { render :edit }
        format.json { render json: @tournament_log.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tournament_logs/1
  # DELETE /tournament_logs/1.json
  def destroy
    @tournament_log.destroy
    respond_to do |format|
      format.html { redirect_to tournament_logs_url, notice: 'Tournament log was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tournament_log
      @tournament_log = TournamentLog.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def tournament_log_params
      params.require(:tournament_log).permit(:player_id, :points, :date)
    end
end
