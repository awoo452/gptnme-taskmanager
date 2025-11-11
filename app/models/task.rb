class Task < ApplicationRecord

    def status_label
        case status
        when 0 then "Not Started"
        when 1 then "In Progress"
        when 2 then "On Hold"
        when 3 then "Completed"
        else "Unknown"
        end
    end

end