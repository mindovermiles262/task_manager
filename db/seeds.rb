if Rails.env == "development"
  Project.delete_all
  Task.delete_all
  Step.delete_all
end

Project.create!(
  title: "First Project",
  github_url: "www.github.com/mindovermiles262/task_manager",
  due_date: Time.now + 8.days
)

Task.create!(
  name: "Create Project-Task association",
  due_date: Time.now + 4.hours,
  project: Project.first
)
Task.create!(
  name: "Create Task-Step association",
  due_date: Time.now + 8.hours,
  project: Project.first
)
Step.create(
  task: Task.first,
  name: "Create Project model",
  description: "Make new project model. A project will have many tasks. A project will have many Steps through Tasks"
)
Step.create(
  task: Task.first,
  name: "Create Task model",
  description: "Make new Task model. A Task will have many steps."
)

Step.create(
  task: Task.second,
  name: "Create Step model",
  description: "Make new step model. A step belongs to the Task"
)
Step.create(
  task: Task.second,
  name: "Modify Task model",
  description: "Edit task.rb to accept steps."
)
Step.create(
  task: Task.second,
  name: "Modify Project model",
  description: "Edit project.rb to accept steps."
)
