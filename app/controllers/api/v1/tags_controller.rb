module Api::V1
    class TagsController < ApplicationController
      def index
        @tags = Tag.order("created_at DESC")
        render json: @tags
      end

      def create
        @tag = Tags.create(todo_params)
        render json: @tag
      end

      def update
        @tag = Tag.find(params[:id])
        @tag.update_attributes(tag)
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
            params.require(:tag).permit(:name)
        end
    end
  end