class ThoughtsController < ApplicationController
  def index
    @today = Date.today
    @show_month = Date.today
    @start_date = Date.parse "#{@show_month.year}-#{@show_month.month}-01"
    @start_date_day = @start_date.wday
    @last_day = (@start_date >> 1)-1
    @thought = Thought.find_by_month_and_day(@show_month.month,@show_month.day)
  end

  def new_calendar
    @today = Date.today
    if params[:new_month].nil?
      @show_month = Date.today
    else
      d = params[:new_month].to_i
      passed_date = Date.parse(params[:passed_date])
      if params[:new_month].to_i > passed_date.month
        @show_month  = passed_date+1.month
      else
        @show_month = passed_date-1.month
      end

    end

    @start_date = Date.parse "#{@show_month.year}-#{@show_month.month}-01"
    @start_date_day = @start_date.wday
    @last_day = (@start_date >> 1)-1

    render :update do |page|
      page.replace_html 'calendar', :partial => 'month',:object => @show_month
    end
  end

  def quote
    @month = params[:month]
    @day = params[:day]
    @today = Date.parse "#{2000}-#{@month}-#{@day}"
    @thought = Thought.find_by_month_and_day(@month,@day)
    render :update do |page|
      page.replace_html 'span-8', :partial => 'thought', :object => @thought
    end
  end

end
