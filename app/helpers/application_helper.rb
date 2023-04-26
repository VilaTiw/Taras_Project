module ApplicationHelper
    def sortable(column, title = nil,css_class = nil)
        title ||= column.titleize
        direction = (column == sort_column && sort_direction == "asc")? "desc" : "asc"
        link_to title, { sort: column, direction: direction }, class: css_class
    end

    def my_color_for(percent)
        if percent <= -1
          'text-red'
        elsif percent >= 1
          'text-green'
        end
      end
end
