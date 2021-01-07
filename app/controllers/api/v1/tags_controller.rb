module Api::V1
    class TagsController < ApplicationController
      def index
        @tags = Tag.where(:user_id => params[:user_id]).order("created_at DESC")
        render json: @tags
      end

      def create
        @tag = Tag.create(tag_params)
        render json: @tag
      end

      def update
        @tag = Tag.find(params[:id])
        @tag.update_attributes(tag_params)
        render json: @tag
      end

      def destroy
        @tag = Tag.find(params[:id])
        if @tag.destroy
            head :no_content, status: :ok
        else
            render json: @tag.errors, status: :unprocessable_entity
        end
      end

      private 
      
        def tag_params
            params.require(:tag).permit(:name, :user_id)
        end
    end
  end