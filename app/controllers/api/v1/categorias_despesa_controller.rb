class Api::V1::CategoriasDespesaController < Api::V1::ApiController
  before_action :set_categoria_despesa, only: [:show, :update, :destroy]
	# before_action :require_authorization!, only: [:show, :update, :destroy]

	# GET /api/v1/categorias_depesas

	def index
		@categorias_despesas = CategoriasDespesa.all
		render json: @categorias_despesas
	end
	
	# GET /api/v1/categorias_depesas/1
	
	def show
		render json: @categorias_despesa
	end
	
	# POST /api/v1/categorias_depesas
	
	def create
		params.permit!
		@categorias_despesa = CategoriasDespesa.new(params[:categorias_despesa])
		if @categorias_despesa.save
			render json: @categorias_despesa, status: :created
		else
			render json: @categorias_despesa.errors, status: :unprocessable_entity
		end
	end
	
	# PATCH/PUT /api/v1/categorias_depesas/1
	
	def update
		if @categorias_despesa.update(categorias_despesas_params)
			render json: @categorias_despesa
		else
			render json: @categorias_despesa.errors, status: :unprocessable_entity
		end
	end
	
	# DELETE /api/v1/categorias_depesas/1
	
	def destroy
		@categorias_despesa.destroy
	end

private
	def set_categoria_despesa
		@categorias_despesa = CategoriasDespesa.find(params[:id])
	end

	def categorias_despesa_params
		params.require(:categorias_despesa).permit(:nome, :descricao, :percentual, :status)
	end
	
	# def require_authorization! 
	# 	unless current_usuario == @categoria_depesa.usuario
	# 		render json: {}, status: :forbidden
	# 	end
	# end
end
