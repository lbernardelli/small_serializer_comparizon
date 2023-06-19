class IssuesController < ApplicationController
  def jbuilder_list
    @issues = load_issues
  end

  def rabl_list
    @issues = load_issues

    render "issues/list"
  end

  def blueprinter_list
    render json: ::Blueprinter::IssueSerializer.render(load_issues), status: :ok
  end

  def panko_list
    render json: Panko::ArraySerializer.new(load_issues, each_serializer: ::Panko::IssueSerializer).as_json, status: :ok
  end

  def jsonapi_list
    render json:  FastJsonApi::IssueSerializer.new(load_issues, include: [:labels, :user]).serializable_hash, status: :ok
  end

  private

  def load_issues
    Issue.includes(:labels, :user)
  end
end
