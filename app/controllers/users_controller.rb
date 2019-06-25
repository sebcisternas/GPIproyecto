class UsersController < ApplicationController
  layout"prueba"
  before_action :set_user, only: [:show,:delete,:edit,:update]
  

  def index
    @users = User.all
  end

  def new
    @user= User.new
    
  end

  def show
    @user= User.find(params[:id])
  end

  def delete
    #@user.destroy
    
    @user.estado = false
    @user.save
        redirect_to users_path, success: "Se ha desvinculado el usuario"
  end


  def update
    
     if @user.update(user_params)
          if @user.rol.descripcion=="Tutor"
             redirect_to tutores_path,success:"Datos Guardados"
          end

          if @user.rol.descripcion!="Tutor"
            redirect_to users_path, success: "Se Actualizaron los datos"
          end
     else
         
            redirect_to edit_user_path, danger: "No se genero el cambio"
          
        

     end
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    respond_to do |format| 
    if @user.save
       if @user.rol.descripcion=="Tutor" || @user.rol.descripcion=="Jefe de Carrera"
        format.html {render :edit, success: "Seleccione Carrera"}
        end
        if @user.rol.descripcion=="Administrador" || @user.rol.descripcion=="Sicologo" || @user.rol.descripcion=="Asistente Social" 
        format.html {redirect_to users_path, success: "Se Registro Usuario"}
        end
    
    else
      format.html {render :new}
      end
      end
  end


  private

  def user_params
    params.require(:user).permit(:nombre, :apellidopa, :apellidoma, :rut, :fecha_nacimiento, :facultad_id, :telefono, :email, :password, :password_confirmation, :rol_id, :estado)
    
  end

  def set_user
    @user = User.find(params[:id])
  end
end