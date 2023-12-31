class JobsController < ApplicationController
  def index
    @jobs = Job.All
    render 'jobs/index'
  end

  def create
    @job = Job.new(job_params)

    if @job.save
      render 'jobs/create'
    end
  end

  def show
    @job = Job.find_by(id: params[:id])

    if @job and @job.show
      render 'jobs/show'
    end
  end

  private

  def job_params
    params.require()
  end
end
