class ProfilesController < ApplicationController

    def index

    end

    def create
      @educator = Educator.last
      @student = Student.last
      @admin = Administrator.last
      if @educator.created_at > @student.created_at && @educator.created_at > @admin.created_at
        @educator.build_profile(profile_params).save
      elsif @student.created_at > @educator.created_at && @student.created_at > @admin.created_at
        @student.build_profile(profile_params).save
      else
        @admin.build_profile(profile_params).save
      end
      redirect_to '/students'
    end

    def show
      @profile = profile.find(params[:id])
    end

    def edit
      @profile = profile.find(params[:id])
    end

    def update
      @profile = profile.find(params[:id])
      @profile.update(profile_params)
      redirect_to '/profiles'
    end

    def destroy
      profile.find(params[:id]).destroy
      redirect_to '/profiles'
    end

    def new
      @profile = Profile.new
    end

    private

    def profile_params
      params.require(:profile).permit(:username, :password)
    end
  end
