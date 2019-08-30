# main task list:
namespace :yo do
  desc "Clean your yeoman cache"
  task :clean, [:name] do |task, args|
    args.with_defaults(
      :name => "afeiship",
    )
    sh "cd $HOME/.cache/node-yeoman-remote-cache && rm -rf #{args[:name]} && cd -"
  end
end
