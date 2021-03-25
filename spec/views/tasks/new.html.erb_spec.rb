# require 'rails_helper'
#
# RSpec.describe "tasks/new", type: :view do
#   before(:each) do
#     assign(:task, Task.new(
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
#   it "renders new task form" do
#     render
#
#     assert_select "form[action=?][method=?]", tasks_path, "post" do
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
