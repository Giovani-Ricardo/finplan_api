class Api::V1::DespesasController < Api::V1::ApiController
	before_action :set_despesa, only: [:show, :update, :destroy]
	before_action :authenticate_api_v1_user!

	# GET /api/v1/despesas

	def index
		render json: despesas
	end
	
	# GET /api/v1/despesa/1
	
	def show
		render json: @despesa
	end
	
	# POST /api/v1/despesa
	
	def create
		params.permit!
		params[:categorias_despesa_id][:user_id] = current_api_v1_user.id
		
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
		params.permit!
		if @despesa.update(params[:despesa])
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

	def despesas
		current_api_v1_user.despesas
	end

	def set_despesa
		@despesa = despesas.find(params[:id])
	end

	def despesa_params
		params.require(:despesa).permit(:nome, :descricao, :percentual, :status)
	end
	
end
