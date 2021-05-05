FactoryBot.define do
  factory :task do
    title { 'task_title' }
    content { 'task.title' }
    expired_at { '2021-05-1 03:33:33' }
    status { 1 }
    priority { 1 }
  end
  factory :task2, class: "Task" do
    title { 'task2_title' }
    content { 'Task.order(expired_at: :desc).first.title' }
    expired_at { '2021-05-20 03:33:33' }
    status { 2 }
    priority { 2 }
    after(:build) do |task2|
      label2 = create(:label2)
      task2.labellings << build(:labelling, task: task2, label: label2)
    end
  end
  factory :task3, class: "Task" do
    title { 'task3_title' }
    content { 'Task.order(priority: :desc).first.title' }
    expired_at { '2021-05-10 03:33:33' }
    status { 3 }
    priority { 3 }
  end
end
