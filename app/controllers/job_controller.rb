class JobController < ApplicationController
  def index
    jobs = Job.joins(:category).select("jobs.*, categories.name as category_name")
    render json:jobs
  end

  def create
    category = Category.find(job_params[:category_id])
    post = Job.new(category: category, title: job_params[:title], income: job_params[:income])
    if post.save
      render json: post, status: :created
    else
      render json: post.errors, status: :unprocessable_entity
    end
  end

  def destroy
    jobs = Job.joins(:category).select("jobs.*, categories.name")
    jobs.destroy(params[:id])
  end


  private
  def job_params
    params.require(:job).permit(:category_id, :income, :title)
  end
end
