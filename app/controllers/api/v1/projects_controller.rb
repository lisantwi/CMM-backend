class Api::V1::ProjectsController < ApplicationController
      def index
        @projects = Project.all
        render json: @projects.to_json(project_serializer_options)
      end

      def create
        @project = Project.create(project_params)
        render json: @project.to_json(project_serializer_options)
      end


      private

      def project_serializer_options

        {:include => {
            :tasks => {:except=>[:created_at, :updated_at],
            :include => {
                :task_entries => {
                    :except => [:created_at, :updated_at]
                }
            }}
            
          }}
      end

      def project_params
        params.require(:project).permit(:project_name, :customer_id)
      end

   

 
 
    
end

