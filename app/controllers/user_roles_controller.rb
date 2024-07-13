class UserRolesController < ApplicationController
  before_action :set_user_role, only: %i[ show edit update destroy ]

  # GET /user_roles or /user_roles.json
  def index
    @user_roles = UserRole.all
  end

  # GET /user_roles/1 or /user_roles/1.json
  def show
  end

  # GET /user_roles/new
  def new
    @user_role = UserRole.new
  end

  # GET /user_roles/1/edit
  def edit
  end

  # POST /user_roles or /user_roles.json
  def create
    @user_role = UserRole.new(user_role_params)

    respond_to do |format|
      if @user_role.save
        format.html { redirect_to user_role_url(@user_role), notice: "User role was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /user_roles/1 or /user_roles/1.json
  def update
    respond_to do |format|
      if @user_role.update(user_role_params)
        format.html { redirect_to user_role_url(@user_role), notice: "User role was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /user_roles/1 or /user_roles/1.json
  def destroy
    @user_role.destroy

    respond_to do |format|
      format.html { redirect_to user_roles_url, notice: "User role was successfully destroyed." }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_role
      @user_role = UserRole.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_role_params
      params.require(:user_role).permit(:user_id, :role_id, :access_add, :access_edit, :access_update, :access_delete)
    end
end
