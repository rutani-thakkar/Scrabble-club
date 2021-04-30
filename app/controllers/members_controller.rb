class MembersController < ApplicationController
  before_action :find_member, only: %i[edit update show]
		
  def index
    # 10 members records who played minimum 5 matches
    @members = Member.joins(:game_members).select('members.*, AVG(game_members.score) AS members_avg_score').group("members.id").having("count(game_members.id) >= ?",5).order('members_avg_score DESC').limit(10)
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(member_params)
    if @member.save
      flash[:success] = 'Member created successfully'
      redirect_to members_path
    else
      render :new
    end
  end

  def show
    game_members = @member.game_members
    @average_score = game_members&.present? ? game_members&.pluck(:score).sum / game_members&.count : 0
    @win_matches = game_members&.win.count
    @lose_matches = game_members&.lose.count
    game_members_score =  game_members&.select(:score, :game_id)
    @highest_score = game_members_score.collect(&:score).max || 0
    partner_player(game_members_score) if game_members.present?
  end

  def edit; end
		
  def update
    if @member.update(member_params)
      flash[:success] = 'Member updated successfully!'
      redirect_to members_path
    else
      render :edit
    end
  end

  private

  def member_params
    params.require(:member).permit(:name, :email, :phone_number)
  end

  def find_member
    @member = Member.find_by_id(params[:id])
    redirect_to root_path unless @member.present?
  end

  def partner_player(game_members_score)
    game = game_members_score.find_by(score: @highest_score).game
    @partner = game.game_members.where.not(member_id:  @member.id).first
  end
end
