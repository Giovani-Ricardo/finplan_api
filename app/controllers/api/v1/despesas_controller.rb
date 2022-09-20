class Api::V1::DespesasController < Api::V1::ApiController
	before_action :set_despesa, only: [:show, :update, :destroy]
	before_action :require_authorization!, only: [:show, :update, :destroy]

	

	private
		def set_despesa
			@depesa = Despesa.find(params[:id])
		end

		def require_authorization! 
			unless current_user == @depesa.usuario
				render json: {}, status: :forbidden
			end
   	end
end
