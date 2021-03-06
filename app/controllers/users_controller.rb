class UsersController < ApplicationController
  before_action :birthday_add, only: [:update]
  before_action :set_user, :set_user_notice, only: [:show,
                                                    :edit,
                                                    :update,
                                                    :category,
                                                    :novel,
                                                    :management,
                                                    :economy,
                                                    :finance,
                                                    :it,
                                                    :motivation,
                                                    :talent,
                                                    :etc,
                                                    :reread_timing,
                                                    :timing_knowledge,
                                                    :timing_motivation,
                                                    :timing_decision,
                                                    :timing_stress,
                                                    :timing_feel_down,
                                                    :timing_lost_love,
                                                    :timing_diversion,
                                                    :timing_relax,
                                                    :all_books,
                                                    :read_books,
                                                    :will_read_books,
                                                    :follow_book,
                                                    :followings,
                                                    :followers,
                                                    :read_count_books,
                                                    :read_history]
  before_action :set_user_impression, only: [:show,
                                             :reread_timing,
                                             :timing_knowledge,
                                             :timing_motivation,
                                             :timing_decision,
                                             :timing_stress,
                                             :timing_feel_down,
                                             :timing_lost_love,
                                             :timing_diversion,
                                             :timing_relax,
                                             :read_count_books]

  def show
    @followers = @user.followers
    @followings = @user.followings
    @buy_books = @user.books.where(status: "book_impression_none").order("created_at DESC").limit(5)
    @read_books_impressions = @impressions.order("created_at DESC").limit(5)
    @will_read_books = @user.books.where(status: "book_following").order("created_at DESC").limit(5)
    @read_count_impressions = @impressions.group(:book_id).order("count(book_id) DESC").order("created_at DESC").limit(5)
    # グラフ用の値の取り出し
    gon.novel = @user.books.category_novel.where.not(status: "book_following").count
    gon.management = @user.books.category_management.where.not(status: "book_following").count
    gon.economy = @user.books.category_economy.where.not(status: "book_following").count
    gon.finance = @user.books.category_finance.where.not(status: "book_following").count
    gon.it = @user.books.category_it.where.not(status: "book_following").count
    gon.motivation = @user.books.category_motivation.where.not(status: "book_following").count
    gon.talent = @user.books.category_talent.where.not(status: "book_following").count
    gon.etc = @user.books.category_etc.where.not(status: "book_following").count
  end

  def edit; end

  def update
    @user[:birth_day] = @birth_date.to_s
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render 'edit'
    end
  end

  def category
    @novels = @user.books.category_novel.where.not(status: "book_following").order("created_at DESC").limit(5)
    @managements = @user.books.category_management.where.not(status: "book_following").order("created_at DESC").limit(5)
    @economys = @user.books.category_economy.where.not(status: "book_following").order("created_at DESC").limit(5)
    @finances = @user.books.category_finance.where.not(status: "book_following").order("created_at DESC").limit(5)
    @its = @user.books.category_it.where.not(status: "book_following").order("created_at DESC").limit(5)
    @motivations = @user.books.category_motivation.where.not(status: "book_following").order("created_at DESC").limit(5)
    @talents = @user.books.category_talent.where.not(status: "book_following").order("created_at DESC").limit(5)
    @etcs = @user.books.category_etc.where.not(status: "book_following").order("created_at DESC").limit(5)
  end

  def novel
    @novels = @user.books.category_novel.where.not(status: "book_following").order("created_at DESC")
  end

  def management
    @managements = @user.books.category_management.where.not(status: "book_following").order("created_at DESC")
  end

  def economy
    @economys = @user.books.category_economy.where.not(status: "book_following").order("created_at DESC")
  end

  def finance
    @finances = @user.books.category_finance.where.not(status: "book_following").order("created_at DESC")
  end

  def it
    @its = @user.books.category_it.where.not(status: "book_following").order("created_at DESC")
  end

  def motivation
    @motivations = @user.books.category_motivation.where.not(status: "book_following").order("created_at DESC")
  end

  def talent
    @talents = @user.books.category_talent.where.not(status: "book_following").order("created_at DESC")
  end

  def etc
    @etcs = @user.books.category_etc.where.not(status: "book_following").order("created_at DESC")
  end

  def reread_timing
    @timing_knowledges = @impressions.where(reread_timing: "knowledge")
    @timing_motivations = @impressions.where(reread_timing: "motivation")
    @timing_decisions = @impressions.where(reread_timing: "decision")
    @timing_stresses = @impressions.where(reread_timing: "stress")
    @timing_feel_downs = @impressions.where(reread_timing: "feel_down")
    @timing_lost_loves = @impressions.where(reread_timing: "lost_love")
    @timing_diversions = @impressions.where(reread_timing: "diversion")
    @timing_relaxes = @impressions.where(reread_timing: "relax")
  end

  def timing_knowledge
    @timing_knowledges = @impressions.where(reread_timing: "knowledge").order("created_at DESC")
  end

  def timing_motivation
    @timing_motivations = @impressions.where(reread_timing: "motivation").order("created_at DESC")
  end

  def timing_decision
    @timing_decisions = @impressions.where(reread_timing: "decision").order("created_at DESC")
  end

  def timing_stress
    @timing_stresses = @impressions.where(reread_timing: "stress").order("created_at DESC")
  end

  def timing_feel_down
    @timing_feel_downs = @impressions.where(reread_timing: "feel_down").order("created_at DESC")
  end

  def timing_lost_love
    @timing_lost_loves = @impressions.where(reread_timing: "lost_love").order("created_at DESC")
  end

  def timing_diversion
    @timing_diversions = @impressions.where(reread_timing: "diversion").order("created_at DESC")
  end

  def timing_relax
    @timing_relaxes = @impressions.where(reread_timing: "relax").order("created_at DESC")
  end

  def all_books
    @all_books = @user.books.where.not(status: "book_following").order("created_at DESC")
  end

  def read_books
    @read_books = @user.books.where(status: "book_impression_exist").order("created_at DESC")
  end

  def will_read_books
    @will_read_books = @user.books.where(status: "book_impression_none").order("created_at DESC")
  end

  def follow_book
    @follow_books = @user.books.where(status: "book_following").order("created_at DESC")
  end

  def followings
    @users = @user.followings
  end

  def followers
    @users = @user.followers
  end

  def read_count_books
    @read_once_impressions = @impressions.group(:book_id).having("count(book_id) = 1").order("created_at DESC")
    @read_twice_impressions = @impressions.group(:book_id).having("count(book_id) = 2").order("created_at DESC")
    @read_three_impressions = @impressions.group(:book_id).having("count(book_id) >= 3").order("created_at DESC")
  end

  def read_history
    @historys = Notice.where(user_id: @user.id).where(status: "impression_register").order("created_at DESC")
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :password, :birth_day, :image)
  end

  def set_user
    @user = User.find(params[:id])
  end

  def set_user_notice
    @notices = Notice.where(user_id: @user.following_ids).where(date: Date.today - 7..Date.today).order("created_at DESC").limit(10)
  end

  def set_user_impression
    @impressions = Impression.where(book_id: @user.books.ids)
  end

  def birthday_add
    if params[:birth_day]["birth_day(1i)"].present? && params[:birth_day]["birth_day(2i)"].present? && params[:birth_day]["birth_day(3i)"].present?
      birthday = params[:birth_day]
      @birth_date = Date.new(birthday["birth_day(1i)"].to_i, birthday["birth_day(2i)"].to_i, birthday["birth_day(3i)"].to_i)
    end
  end
end
