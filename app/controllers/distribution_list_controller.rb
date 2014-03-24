class DistributionListController < ApplicationController
  include DistributionListHelper

  before_filter :is_login


  def index

    my_lists = ListRoot.where('user_id = ?', session[:user_id])

    @form_data = {
        my_lists: my_lists
    }

  end




  def edit
    list_id = params[:id]
    list_strings = ListString.get_strings(list_id, session[:user_id])
    text_templates = TemplateText.where('user_id = ?', session[:user_id]).map { |templat| [templat.name, templat.id] }

    @form_data = {
        list_strings: list_strings,
        list_id: list_id,
        text_templates: text_templates
    }
  end

  def srv_delete_list
    list_id = params[:list_id]
    ListRoot.try_delete(list_id, session[:user_id])
    render :nothing => true
  end

  def srv_delete_list_string
    list_string_id = params[:list_string_id]
    answer_id = ListString.try_delete(list_string_id, session[:user_id])
    render text: 's_'+answer_id
  end

  def srv_file_to_list
    file_root = FileRoot.find(params[:file_id])
    if file_root.user_id == session[:user_id]
      list_root = ListRoot.new
        list_root.user_id = session[:user_id]
      (params[:list_name].size == 0) ? list_root.name = file_root.filename : list_root.name = params[:list_name]
      list_root.save
      list_root_id = list_root.id
      file_strings = FileString.where('file_root_id = ?', file_root.id)
      ListString.add_strings_from_file(list_root_id, params, file_strings, session[:user_id])
    end
    render :nothing => true
  end

  def srv_sms_info_show

    template = TemplateText.find(params[:textTemplate])
    list_root = ListRoot.find(params[:list_id])
    list_array = Hash.new
    if list_root.user_id == session[:user_id]
      list_strings = ListString.where("list_root_id = ?", params[:list_id])
      list_strings.all.each do |list_string|
        template_text = template.text
        template_text = template_text.gsub("###fio###", list_string.fio)
        template_text = template_text.gsub("###dog###", list_string.dogovor)
        template_text = template_text.gsub("###sum###", list_string.summa.to_s)
        template_text = template_text.gsub("###dlg###", list_string.summa_dolg.to_s)
        template_text = template_text.gsub("###dte###", date_of_next('Saturday').to_s)
        template_text = template_text.gsub("###dtx###", list_string.oplata_date.to_s)
        if template.translite
          template_text = russian_translit(template_text)
          array_string = {
            id: list_string.id,
            list_root_id: list_string.list_root_id,
            sms_length: template_text.size,
            sms_parts: (template_text.size/160.0).ceil,
            text: template_text
          }
        else
          array_string = {
            id: list_string.id,
            list_root_id: list_string.list_root_id,
            sms_length: template_text.size,
            sms_parts: (template_text.size/70.0).ceil,
            text: template_text
          }
        end
        list_array[list_string.id] = array_string
      end


    end



    render text: JSON.generate(list_array)
  end


  private
  def is_login
    if !session[:is_login]
      redirect_to '/login'
    end
  end


end
