composer create-project drupal/recommended-project mysite
cd mysite

# Add your Git profile repo
composer config repositories.global_profile vcs git@github.com:Rrodriguez15/global_profile.git

# Require your profile
composer require drbrigs_lab/global_profile:dev-main

# Install Drupal using the profile
drush site:install global_profile
# If ddev:
ddev drush site:install global_profile
