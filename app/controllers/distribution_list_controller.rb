class DistributionListController < ApplicationController


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
      template_text.tr!("###fio###", list_string.fio)
      template_text.tr!("###dog###", list_string.dogovor)
      template_text.tr!("###sum###", list_string.summa)
      template_text.tr!("###dlg###", list_string.summa_dolg)
      template_text.tr!("###dte###", 'to')
      template_text.tr!("###dtx###", list_string.oplata_date)
        array_string = {
          id: list_string.id,
          list_root_id: list_string.list_root_id,
          fio: list_string.fio,
          dogovor: list_string.dogovor,
          summa: list_string.summa,
          summa_dolg: list_string.summa_dolg,
          oplata_date: list_string.oplata_date
        }
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
