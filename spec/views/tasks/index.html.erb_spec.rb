# require 'rails_helper'
#
# RSpec.describe "tasks/index", type: :view do
#   before(:each) do
#     assign(:tasks, [
#       Task.create!(
#         id: 2,
#         uuid: "",
#         configuration_uuid: "",
#         group_uuid: "",
#         company_uuid: "",
#         role: "Role",
#         status: "Status",
#         assignee_type: "Assignee Type",
#         assignee_ids: 3
#       ),
#       Task.create!(
#         id: 2,
#         uuid: "",
#         configuration_uuid: "",
#         group_uuid: "",
#         company_uuid: "",
#         role: "Role",
#         status: "Status",
#         assignee_type: "Assignee Type",
#         assignee_ids: 3
#       )
#     ])
#   end
#
#   it "renders a list of tasks" do
#     render
#     assert_select "tr>td", text: 2.to_s, count: 2
#     assert_select "tr>td", text: "".to_s, count: 2
#     assert_select "tr>td", text: "".to_s, count: 2
#     assert_select "tr>td", text: "".to_s, count: 2
#     assert_select "tr>td", text: "".to_s, count: 2
#     assert_select "tr>td", text: "Role".to_s, count: 2
#     assert_select "tr>td", text: "Status".to_s, count: 2
#     assert_select "tr>td", text: "Assignee Type".to_s, count: 2
#     assert_select "tr>td", text: 3.to_s, count: 2
#   end
# end
