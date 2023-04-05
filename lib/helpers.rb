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
    .select { |item| item[:list] == true}
    .select { |item| item[:section] == section_name}
end