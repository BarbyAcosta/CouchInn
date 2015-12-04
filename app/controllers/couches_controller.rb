class CouchesController < ApplicationController
 before_action :get_couch, only: [:edit, :update, :destroy]

  def get_couch
    @couch = Couch.find(params[:id])
  end

  def index
    @couch= Couch.all
  end

  def show    
    @couch = Couch.find(params[:id])
  end

  def new
    @couch = Couch.new
    @c = Couch.all 
    @t = Tipocouch.all  
    
  end

  def edit
  end

  def create
    @couch = Couch.new(params.require(:couch).permit(:name, :description, :imageurl, :tipocouch_id)) 
    @couch.save

    redirect_to couches_path
  end

  def update
    @couch.update_attributes(params.require(:couch).permit(:name, :description, :imageurl, :tipocouch_id , :capacidad , :localidad))
     redirect_to couches_path
  end

  def destroy
    @couch.destroy
  end

    def is_owner?(user)
    return ('Condición que mira si el usuario es o no dueño')
  end
  
  # Recibe como parámetros las fechas en las que se busca 
  # que esté libre el couch
  def is_free?(from, to)
    reservas_del_couch = self.reserves # reservas del couch (por el has_many)
    reservas_confirmadas = reservas_del_couch.confirmed # solo miramos las confirmadas
    reservas_confirmadas.where('? < end_date', from) # from se copiaría en el lugar de '?'
    reservas_confirmadas.where('? > start_date', to) # to se copiaría en el lugar de '?'
    
    # Retorno true o false si el resultado de lo anterior 
    # está vacío o no
    return reservas_confirmadas.empty?
  end
  
  # Retorna los couches que están libres entre 2 fechas
  # Por una cuestión de simplicidad se realiza iterando sobre 
  # sobre los couches
  def self.free_couches(from, to)
    result = [] # En result agregaremos los hospedajes libres
    Couch.all.each do |couch|
      result << couch if couch.is_free?(from, to) # Agregamos el hospedaje si está libre
    end
  end  

end
