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

end
