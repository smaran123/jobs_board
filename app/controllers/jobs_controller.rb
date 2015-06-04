class JobsController < ApplicationController
	before_action :set_job, :only => [:show,:edit,:update,:destroy]


	def index
		@jobs =Job.all.order("created_at ASC")
	end

	def new
		@job = Job.new
	end 

	def create
		@job = Job.new(job_params)
		if @job.save
			redirect_to @job
		else
			render :new
		end
	end


	def edit

	end

	def update
		if @job.update(job_params)

			redirect_to @job
		else
			render :edit
		end
	end

	def show

	end

	def destroy
		@job.destroy
		redirect_to jobs_path
	end

	private

	def set_job
		@job = Job.find(params[:id])
	end

	def job_params
		params.require(:job).permit!
	end
end
