class Api::V1::DespesasController < Api::V1::ApiController
	before_action :set_despesa, only: [:show, :update, :destroy]
	before_action :authenticate_api_v1_user!

	# GET /api/v1/despesas

	def index
		@despesas = despesas
		render json: @despesas
	end
	
	# GET /api/v1/despesa/1
	
	def show
		render json: @despesa
	end
	
	# POST /api/v1/despesa
	
	def create
		puts params
		params.permit!
		usuario = current_api_v1_user.id
		
		@categoria = CategoriasDespesa.find(params[:despesa][:categorias_despesa_id])
		@despesa = Despesa.new(params[:despesa])
		@despesa.user = usuario

		if @despesa.save!
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

	def filtrar 
		puts params
		if params[:categorias_despesa_id].present? && params[:categorias_despesa_id] != "Selecione a categoria"
			puts "Entrou"
			@despesas = Despesa.where(categorias_despesa_id: params[:categorias_despesa_id])
			puts(params[:categorias_despesa_id])
			if params[:data_fim].present? && params[:data_inicio].present?
				puts "entrou"
				@despesas = @despesas.where("data_vencimento between ? and ?", params[:data_inicio], params[:data_fim] )
			end
		elsif params[:data_fim].present? && params[:data_inicio].present?
			@despesas = Despesa.where("data_vencimento between ? and ?", params[:data_inicio], params[:data_fim])
		else
			@despesas = Despesa.all
		end
		render json: @despesas.order('data_vencimento')
	end

	def top_5_despesas
		@despesas = current_api_v1_user.despesas.order('valor desc')
		render json: @despesas[0..4]
	end

private

	def despesas
		current_api_v1_user.despesas #Despesa.all.order('data_vencimento') 
	end

	def set_despesa
		@despesa = despesas.find(params[:id])
	end
	
end
