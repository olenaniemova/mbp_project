# frozen_srting_literal: true

# class Profiles Controller
class ProfilesController < ApplicationController
  before_action :set_profile, only: %i[edit update destroy]
  before_action :set_profile_show, only: %i[show]

  def index
    @profiles = Profile.all
  end

  def show
    @user = User.find(@profile.user_id)
  end

  def new
    @profile = Profile.new
  end

  def edit; end

  def create
    @profile = Profile.new(profile_params)
    @profile.user_id = current_user.id

    respond_to do |format|
      if @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully created.' }
        format.json { render :show, status: :created, location: @profile }
      else
        format.html { render :new }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @profile.update(profile_params)
        @profile.bpws = bpws

        @profile.save
        format.html { redirect_to @profile, notice: 'Profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @profile }
      else
        format.html { render :edit }
        format.json { render json: @profile.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @profile.destroy
    respond_to do |format|
      format.html { redirect_to profiles_url, notice: 'Profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_profile
    @profile = current_user.profile
  end

  def set_profile_show
    @profile = Profile.find(params[:id])
  end

  def profile_params
    params.require(:profile).permit(:first_name, :last_name, :birthday, :gender, :phone, :about_me, :hiking_count, :weight, :height, :physical_condition_id)
  end

  def bpws
    @profile.weight / 3
  end
end
