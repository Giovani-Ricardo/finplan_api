class Api::V1::FuncionariosController < Api::V1::ApiController
	before_action :set_funcionario, only: [:show, :update, :destroy]
	# before_action :require_authorization!, only: [:show, :update, :destroy]



 private
		def set_funcionario
			@funcionario = Funcionario.find(params[:id])
		end

		# def require_authorization! 
		# 	unless current_user == @funcionario.usuario
		# 		render json: {}, status: :forbidden
		# 	end
   		# end
end
