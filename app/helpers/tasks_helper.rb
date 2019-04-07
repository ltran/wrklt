module TasksHelper
    def person_name_link_to(task)
        if task.person.present?
            link_to task.person.try(:name), person_path(task.person)
        else
            "unassigned"
        end
    end
end
