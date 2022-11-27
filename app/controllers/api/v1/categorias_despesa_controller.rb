class Api::V1::CategoriasDespesaController < Api::V1::ApiController
  	before_action :set_categoria_despesa, only: [:show, :update, :destroy]
	#before_action :authenticate_api_v1_user!

	# GET /api/v1/categorias_despesa

	def index
		render json: categorias
	end
	
	# GET /api/v1/categorias_despesa/1
	
	def show
		render json: @categorias_despesa
	end
	
	# POST /api/v1/categorias_despesa
	
	def create
		params.permit!
		params[:categorias_despesa][:user_id] = 2 #current_api_v1_user.id
		@categorias_despesa = CategoriasDespesa.new(params[:categorias_despesa])
		puts @categorias_depesas
		if @categorias_despesa.save
			render json: @categorias_despesa, status: :created
		else
			render json: @categorias_despesa.errors, status: :unprocessable_entity
		end
	end
	
	# PATCH/PUT /api/v1/categorias_despesa/1
	
	def update
		puts "Entrou"
		params.permit!
		if @categorias_despesa.update(params[:categorias_despesa])
			render json: @categorias_despesa
		else
			render json: @categorias_despesa.errors, status: :unprocessable_entity
		end
	end
	
	# DELETE /api/v1/categorias_despesa/1
	
	def destroy
		@categorias_despesa.destroy
	end

private
	def categorias
		CategoriasDespesa.all #current_api_v1_user.categorias
	end

	def set_categoria_despesa
		@categorias_despesa = categorias.find(params[:id])
	end

	def categorias_despesa_params
		params.require(:categorias_despesa).permit(:nome, :descricao, :percentual, :status)
	end
	
	def require_authorization! 
		unless current_user == @categoria_depesa.usuario
			render json: {}, status: :forbidden
		end
	end
end
