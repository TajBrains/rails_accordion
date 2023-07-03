namespace :rails_accordion do
  desc "Build for release"
  task :build do
    `yarn build`
    `cp -r ./app/assets/builds/* ./public/rails_accordion_assets`
  end
end
