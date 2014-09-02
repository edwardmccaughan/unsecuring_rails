namespace :db do
  desc "reset db"
  task :init => :environment do
    User.all.each{ |p| p.destroy }
    User.create(email: "edward@test.com", password: "password", password_confirmation: "password")
    User.create(email: "admin@test.com", password: "ilovecats", password_confirmation: "ilovecats", admin: true)

    Recipe.all.each{ |r| r.destroy }
    Recipe.create(name: "carrot soup", instructions: "chop up carrots, put in boiling water")
    Post.all.each{ |p| p.destroy }
    Post.create(title: "recent news", body: "No news is good news", user: User.first )
  end

end