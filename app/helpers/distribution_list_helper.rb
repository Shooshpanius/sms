# coding: utf-8

module DistributionListHelper

  def russian_translit(text)
    translited = text.tr('абвгдеёзийклмнопрстуфхэыь', 'abvgdeezijklmnoprstufhey\'')
    translited = translited.tr('АБВГДЕЁЗИЙКЛМНОПРСТУФХЭ', 'ABVGDEEZIJKLMNOPRSTUFHEY\'')

    translited = translited.gsub(/[жцчшщъюяЖЦЧШЩЪЮЯ]/,
                                 'ж' => 'zh', 'ц' => 'ts', 'ч' => 'ch', 'ш' => 'sh', 'щ' => 'sch', 'ъ' => '', 'ю' => 'ju', 'я' => 'ja',
                                 'Ж' => 'ZH', 'Ц' => 'TS', 'Ч' => 'CH', 'Ш' => 'SH', 'Щ' => 'SCH', 'Ъ' => '', 'Ю' => 'JU', 'Я' => 'JA')
    return translited
  end

  def date_of_next(day)
    date  = Date.parse(day)
    delta = date > Date.today ? 0 : 7
    #date + delta
    return date + delta
  end


  def text_to_tpl(text_template, list_string)
    text = text_template.text
    text = text.gsub("###fio###", list_string.fio)
    text = text.gsub("###dog###", list_string.dogovor)
    text = text.gsub("###sum###", list_string.summa.to_s)
    text = text.gsub("###dlg###", list_string.summa_dolg.to_s)
    text = text.gsub("###dte###", date_of_next('Saturday').to_s)
    text = text.gsub("###dtx###", list_string.oplata_date.to_s)

    if text_template.translite
      text = russian_translit(text)
    end

    return text

  end


end
