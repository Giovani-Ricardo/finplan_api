class Api::V1::DespesasController < Api::V1::ApiController
	before_action :set_despesa, only: [:show, :update, :destroy]
	# before_action :require_authorization!, only: [:show, :update, :destroy]

	# GET /api/v1/despesas

	def index
		@despesas = Despesa.all
		render json: @despesas
	end
	
	# GET /api/v1/despesa/1
	
	def show
		render json: @despesa
	end
	
	# POST /api/v1/despesa
	
	def create
		params.permit!
		@categoria = CategoriasDespesa.find(params[:categorias_despesa_id])
		@despesa = Despesa.new(params[:despesa])
		@despesa.categorias_despesa = @categoria
		if @despesa.save
			render json: @despesa, status: :created
		else
			render json: @despesa.errors, status: :unprocessable_entity
		end
	end
	
	# PATCH/PUT /api/v1/despesas/1
	
	def update
		if @despesa.update(despesas_params)
			render json: @categorias_despesa
		else
			render json: @categorias_despesa.errors, status: :unprocessable_entity
		end
	end
	
	# DELETE /api/v1/categorias_depesas/1
	
	def destroy
		render json: @despesa.destroy
	end

private
	def set_despesa
		@despesa = Despesa.find(params[:id])
	end

	def despesa_params
		params.require(:despesa).permit(:nome, :descricao, :percentual, :status)
	end
	
	# def require_authorization! 
	# 	unless current_usuario == @categoria_depesa.usuario
	# 		render json: {}, status: :forbidden
	# 	end
	# end
end
