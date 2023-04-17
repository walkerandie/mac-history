use_helper Nanoc::Helpers::Tagging
use_helper Nanoc::Helpers::Blogging
use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::LinkTo

def timeline
  @items
    .reject { |item| item[:year].nil? }
    .sort_by { |item| item[:year] }
end

def items_in_section(section_name)
  @items
    .select { |item| item[:section] == section_name}
    .reject { |item| item[:year].nil? }
    .sort_by{ |item| item[:year] }
 end

 def section_names
  @items
    .reject {|item| item[:section].nil? }
    .map { |item| item[:section] }
    .sort.uniq
end

def get_section_list(section_name)
  @items
    .select { |item| item[:section] == section_name}
    .select { |item| item[:list] == true}
end

def articles_in_section(section_name)
  @items
  .select { |item| item[:section] == section_name}
  .sort_by { |item| item.fetch(:year, 0) }
end

def next_item(item)
  idx = articles_in_section(item[:section]).index(item)
  if idx && idx > 0
    articles_in_section(item[:section])[idx + 1]
  end
end

def previous_item(item)
  idx = articles_in_section(item[:section]).index(item)
  if idx && idx > 0
    articles_in_section(item[:section])[idx - 1]
  end
end




