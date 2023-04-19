use_helper Nanoc::Helpers::Tagging
use_helper Nanoc::Helpers::Blogging
use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::LinkTo

def timeline
  @items
    .reject { |item| item[:year].nil? }
    .sort_by{ |item| (item[:timeline_year] || item[:year]) }
end

def items_in_section(section_name)
  @items
    .select { |item| item[:section] == section_name}
    .reject { |item| item[:year].nil? }
    .sort_by{ |item| (item[:timeline_year] || item[:year]) }
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

def next_item(item)
  section_items = items_in_section(item[:section])
  idx = section_items.index(item)
  if idx
    section_items[idx + 1]
  end
end

def previous_item(item)
  section_items = items_in_section(item[:section])
  idx = section_items.index(item)
  if idx && idx > 0
    section_items[idx - 1]
  end
end




