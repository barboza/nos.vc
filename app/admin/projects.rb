ActiveAdmin.register Project do
  controller.authorize_resource

  filter :name
  filter :category
  filter :created_at
  filter :updated_at
  filter :can_finish
  filter :finished

  index do
    column :name do |project|
      link_to project.name, admin_project_path(project)
    end
    column :headline
    column "Financial report" do |project|
      link_to 'backers report', backers_financial_report_path(project.to_param)
    end
    column "Location report" do |project|
      link_to 'backers location report', backers_location_report_path(project.to_param)
    end
    default_actions
  end

  form do |f|
    f.inputs do
      # f.input :user
      f.input :category
      f.input :curated_pages
      f.input :name, :as => :string
      f.input :goal
      f.input :expires_at
      f.input :maximum_backers
      f.input :about
      f.input :headline
      f.input :video_url, :as => :string
      f.input :when_short
      f.input :when_long
      f.input :location
      f.input :leader_bio
      f.input :leader_id
      f.input :short_url, :as => :string
      f.input :image_url, :as => :string
      f.input :order
      f.input :can_finish
      f.input :finished
      f.input :visible
      f.input :rejected
      f.input :recommended
      f.input :home_page
    end

    f.buttons do
      f.submit
    end
  end
end
