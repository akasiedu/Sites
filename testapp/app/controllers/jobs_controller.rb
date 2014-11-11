class JobsController < ApplicationController
	before_action :set_job, only: [:show, :edit, :update, :destroy]

def index
	@jobs = Job.all
end


def show
	
end


def new
	@job = Jobs.new
end

def edit
	
end

def create
	@job = Job.new(job_params)

	respond_to do |format|
		if @job.save
			format.html { redirect_to @job, notice: 'Job Listing has been successfully created.' }
			format.json { render :show, status: created, location: @job }	
		else
			format.html {render :new}
end

end

