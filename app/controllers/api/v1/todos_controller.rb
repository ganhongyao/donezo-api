module Api::V1
    class TodosController < ApplicationController
      def index
        @todos = Todo.all
        render json: @todos
      end
    end
  end