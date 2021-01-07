module Api::V1
    class TodosController < ApplicationController
      skip_before_action :verify_authenticity_token
      def index
        @todos = Todo.where(:user_id => params[:user_id]).order("duedate ASC")
        render json: @todos
      end

      def create
        @todo = Todo.create(todo_params)
        render json: @todo
      end

      def update
        @todo = Todo.find(params[:id])
        @todo.update_attributes(todo_params)
        render json: @todo
      end

      def destroy
        @todo = Todo.find(params[:id])
        if @todo.destroy
            head :no_content, status: :ok
        else
            render json: @todo.errors, status: :unprocessable_entity
        end
      end

      private 
        
        def todo_params
            params.require(:todo).permit(:title, :duedate, :description, :completed, :user_id, :tags_list => [])
        end
    end
  end