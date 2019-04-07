module PagesHelper
    def task_label_text(task)
        task_label = task.name
        if task.person.present?
            task_label += " (#{task.person.name})"
        end
    end
end
