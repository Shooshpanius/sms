class TemplateTextController < ApplicationController

  before_filter :is_login


  def index
    templates = TemplateText.where('user_id = ?', session[:user_id])
    @form_data = {
        templates: templates
    }
  end

  def srv_add_template
    TemplateText.create(
        user_id: session[:user_id],
        name: params[:inputName],
        text: params[:inputText],
        translite: (params[:inputTranslite]=='on')?1:0
    )
    render :nothing => true
  end

  def srv_delete_template
    TemplateText.destroy_all(:id => params[:template_id],
                             :user_id => session[:user_id]
    )
    render :text => 't_'+params[:template_id]
  end

  def srv_edit_template_modal
    template = TemplateText.where('id = ? and user_id = ?', params[:template_id], session[:user_id])
    @form_data = {
        template: template
    }
    render(:layout => false)
  end

  def srv_save_template_modal
    TemplateText.where('id = ? and user_id = ?', params[:template_id], session[:user_id]).update_all(
        :name => params[:template_name],
        :text => params[:template_text],
        :translite => (params[:template_translite]=='true')?1:0
    )
    render :nothing => true
  end

  private
  def is_login
    if !session[:is_login]
      redirect_to "/login"
    end
  end


end
