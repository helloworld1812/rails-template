# require 'rails_helper'
#
# RSpec.describe "tasks/edit", type: :view do
#   before(:each) do
#     @task = assign(:task, Task.create!(
#       id: 1,
#       uuid: "",
#       configuration_uuid: "",
#       group_uuid: "",
#       company_uuid: "",
#       role: "MyString",
#       status: "MyString",
#       assignee_type: "MyString",
#       assignee_ids: 1
#     ))
#   end
#
#   it "renders the edit task form" do
#     render
#
#     assert_select "form[action=?][method=?]", task_path(@task), "post" do
#
#       assert_select "input[name=?]", "task[id]"
#
#       assert_select "input[name=?]", "task[uuid]"
#
#       assert_select "input[name=?]", "task[configuration_uuid]"
#
#       assert_select "input[name=?]", "task[group_uuid]"
#
#       assert_select "input[name=?]", "task[company_uuid]"
#
#       assert_select "input[name=?]", "task[role]"
#
#       assert_select "input[name=?]", "task[status]"
#
#       assert_select "input[name=?]", "task[assignee_type]"
#
#       assert_select "input[name=?]", "task[assignee_ids]"
#     end
#   end
# end
