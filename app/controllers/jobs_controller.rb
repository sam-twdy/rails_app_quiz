class JobsController < ApplicationController
    skip_before_action :verify_authenticity_token

    def index
        render json: Job.all
    end

    def show
        render json: Job.ids
    end

    def create
        new_job = Job.create(job_title: params[:job_title])
        
        render json: { job: new_job }
    end
end
