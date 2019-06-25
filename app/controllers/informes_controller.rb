class InformesController < ApplicationController
  layout"prueba"
  before_action :set_informe, only: [:show,:delete,:edit,:update]
  
  
  def index
    @informes=Informe.all
    @alertas= Alerta.all
  
    
  end

  def show
    @informe= Informe.find(params[:id])
    respond_to do |format|
      format.html
      format.json
      format.pdf { render template: 'informes/reporte', pdf:'Reporte'}

    end
  end

  def new
    @informes= Informe.new
    @alertas= Alerta.new
  end
  
  def delete
    #@user.destroy
    
    @informe.estado = false
    @informe.save
      redirect_to informes_path, success: "Informe inactivo"
      
  
  end
  
  def update
    if @informe.update(informe_params)
      redirect_to informe_path, success: "Se Actualizaron los datos"
    else
      render :edit, danger: "Modifique por valores válidos"
    end
  end


  def create
      @informe = Informe.new(informe_params)
      @informe.user_id=current_user.id
      if @informe.save
      
          #if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==1 && @informe.nota9==0 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==0 && @informe.nota16==1 && @informe.nota17==0 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
          if @informe.nota10==1 
          @informe.resultado="Gerente General de Empresa de Finanzas"
          end
         
          if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==1 && @informe.nota9==0 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==0 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente General de Empresa de Retail"
          end
         
          
          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==1 && @informe.nota9==1 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente General de Empresa de Tecnologías de la Información"
          end

          if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==1 && @informe.nota9==1 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==0 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente General de Empresa de Transportes"
          end

          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==0 && @informe.nota7==1 && @informe.nota8==1 && @informe.nota9==1 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente General de Empresa de RRHH"
          end

          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==0 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==1 && @informe.nota9==1 && @informe.nota10==1 && @informe.nota11==1 && @informe.nota12==0 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Dueño absoluto de una empresa"
          end







          
          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==0 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente Funcional de Departamento de Compras"
          end

          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente Funcional de Ventas"
          end

          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==0 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Gerente Funcional de RRHH"
          end



          if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Administrador de Departamento"
          end


          if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Administrador de Retail"
          end

          if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==1 && @informe.nota6==1 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==1 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==1 && @informe.nota18==0 && @informe.nota19==1 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
            @informe.resultado="Jefe de Proyectos"
          end
          
          




          #(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==0 && @informe.nota4==0 && @informe.nota5==0 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==0 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==0 && @informe.nota17==1 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==1 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==0 && @informe.nota28==1 )
            if @informe.nota1==1 && @informe.nota2==1
              @informe.resultado="Operario Técnico Calificado"
          end

          #if(@informe.nota1==1 && @informe.nota2==0 && @informe.nota3==0 && @informe.nota4==0 && @informe.nota5==0 && @informe.nota6==0 && @informe.nota7==0 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==0 && @informe.nota13==1 && @informe.nota14==1 && @informe.nota15==1 && @informe.nota16==0 && @informe.nota17==1 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==1 && @informe.nota21==1 && @informe.nota22==1 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==0 && @informe.nota28==1 )
          if @informe.nota3==1 && @informe.nota4==1  
          @informe.resultado="Operario Técnico No Calificado"
          end

          #if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==0 && @informe.nota4==1 && @informe.nota5==0 && @informe.nota6==1 && @informe.nota7==0 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==1 && @informe.nota16==0 && @informe.nota17==1 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==1 && @informe.nota21==0 && @informe.nota22==1 && @informe.nota23==1 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
          if @informe.nota5==1 
          @informe.resultado="Secretariao"
          end
         
          #if(@informe.nota1==0 && @informe.nota2==0 && @informe.nota3==0 && @informe.nota4==1 && @informe.nota5==0 && @informe.nota6==0 && @informe.nota7==0 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==1 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==1 && @informe.nota16==0 && @informe.nota17==0 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==1 && @informe.nota21==0 && @informe.nota22==0 && @informe.nota23==1 && @informe.nota24==0 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==0 && @informe.nota28==0 )
          if @informe.nota6==1 
          @informe.resultado="Ejecutivo de trámites"
          end

          #if(@informe.nota1==0 && @informe.nota2==0 && @informe.nota3==0 && @informe.nota4==0 && @informe.nota5==0 && @informe.nota6==0 && @informe.nota7==0 && @informe.nota8==0 && @informe.nota9==0 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==0 && @informe.nota13==0 && @informe.nota14==0 && @informe.nota15==0 && @informe.nota16==0 && @informe.nota17==0 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==0 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==0 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==0 && @informe.nota28==0 )
          if @informe.nota7==1
             @informe.resultado="Operario de Producción"
          end

          #if(@informe.nota1==1 && @informe.nota2==1 && @informe.nota3==1 && @informe.nota4==1 && @informe.nota5==0 && @informe.nota6==0 && @informe.nota7==1 && @informe.nota8==0 && @informe.nota9==1 && @informe.nota10==0 && @informe.nota11==0 && @informe.nota12==0 && @informe.nota13==1 && @informe.nota14==0 && @informe.nota15==1 && @informe.nota16==1 && @informe.nota17==0 && @informe.nota18==1 && @informe.nota19==0 && @informe.nota20==0 && @informe.nota21==1 && @informe.nota22==0 && @informe.nota23==0 && @informe.nota24==1 && @informe.nota25==1 && @informe.nota26==0 && @informe.nota27==1 && @informe.nota28==0 )
          if @informe.nota8==1
            @informe.resultado="Vendedor"
          end











      if(@informe.resultado.nil?) then
        @informe.resultado="No Califica para ningun Cargo"
      end   
      
      

      @informe.save 
      redirect_to informes_path, success: "Perfil Creado"
      else
      redirect_to new_informe_path, danger: "No se logro crear el perfil"
      end

  end
  
  
   
  

  private

  def informe_params
  params.require(:informe).permit(:nota1, :nota2, :nota3, :nota4, :nota5, :promhabitos, :nota6, :nota7, :nota8, :nota9, :nota10, :promvocacion, :nota11, :nota12, :nota13, :nota14,:nota15, :promsalud, :observacion, :estudiante_id, :user_id, :estado, :nota16, :nota17, :nota18, :nota19, :nota20, :nota21, :nota22, :nota23, :nota24, :nota25, :nota26, :nota27, :nota28, :resultado)
  end

  def alerta_params
  params.permit(:estado, :fecharecepcion, :prioridad, :informe_id )
  end

  def set_informe
    @informe = Informe.find(params[:id])
  end
  
 


end
