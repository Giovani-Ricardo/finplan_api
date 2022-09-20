class Api::V1::CategoriasDespesasController < Api::V1::ApiController
  before_action :set_categoria_despesa, only: [:show, :update, :destroy]
	before_action :require_authorization!, only: [:show, :update, :destroy]

	

	private
		def set_categoria_despesa
			@categoria_depesa = CategoriasDespesa.find(params[:id])
		end  
		
		def require_authorization!
 
			unless current_user == @categoria_depesa.usuario
	
				render json: {}, status: :forbidden
	
			end
 
   	end


end
