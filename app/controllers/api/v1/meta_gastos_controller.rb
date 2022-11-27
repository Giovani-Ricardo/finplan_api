class Api::V1::MetaGastosController < Api::V1::ApiController
    def index
        @meta = MetaGasto.last #current_api_v1_user.meta
        render json: @meta
    end

    def create
        params.permit!
        @meta = MetaGasto.new(params[:meta_gasto])
        @meta.user_id = 2#current_api_v1_user.id
        if @meta.save
			render json: @meta, status: :created
		else
			render json: @meta.errors, status: :unprocessable_entity
		end
    end

    def atualizar_meta
        params.permit!
        @meta = MetaGasto.last #current_api_v1_user.meta
        unless @meta
            self.create
        else
            if @meta.update(params[:meta_gasto])
                render json: @meta
            else
                render json: @meta.errors, status: :unprocessable_entity
            end
        end


    end
end
