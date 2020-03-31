crumb :root do
  link "トップページ", root_path
end

crumb :mypage do
  link "マイページ", edit_user_path(current_user)
end

crumb :user_new do
  link "新規ユーザー登録", new_user_session_path
end

crumb :user_session do
  link "ログイン", user_session_path
end

crumb :user_address do
  link "住所登録", new_user_address_path
  parent :user_session
end

crumb :card do
  link "カード登録", new_user_card_path(current_user)
  parent :mypage
end

crumb :card_show do
  link "カード情報", user_card_path(current_user)
  parent :mypage
end

# crumb :projects do
#   link "Projects", projects_path
# end

# crumb :project do |project|
#   link project.name, project_path(project)
#   parent :projects
# end

# crumb :project_issues do |project|
#   link "Issues", project_issues_path(project)
#   parent :project, project
# end

# crumb :issue do |issue|
#   link issue.title, issue_path(issue)
#   parent :project_issues, issue.project
# end

# If you want to split your breadcrumbs configuration over multiple files, you
# can create a folder named `config/breadcrumbs` and put your configuration
# files there. All *.rb files (e.g. `frontend.rb` or `products.rb`) in that
# folder are loaded and reloaded automatically when you change them, just like
# this file (`config/breadcrumbs.rb`).