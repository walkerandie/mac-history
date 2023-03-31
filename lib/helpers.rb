use_helper Nanoc::Helpers::Tagging
use_helper Nanoc::Helpers::Blogging
use_helper Nanoc::Helpers::Rendering
use_helper Nanoc::Helpers::LinkTo

def timeline
  @items
    .reject { |item| item[:year].nil? }
    .sort_by { |item| item[:year] }
end

def student_housing
  @items
  .reject { |item| item[:section].nil? }
  .select { |item| item[:section] == "Student Housing"}
  .reject { |item| item[:year].nil? }
  .sort_by{ |item| item[:year] }
end

