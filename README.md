# A Ruby on Rails with Postgres Doctor/patient appointments scheduler

Template 

https://github.com/gitpod-samples/template-ruby-on-rails-postgres

## Next Steps

Click the button below to start a new development environment on Gitpod:

[![Open in Gitpod](https://gitpod.io/button/open-in-gitpod.svg)](https://gitpod.io/#https://github.com/rblcoder/appointments)


## Notes 

* [./gitpod.yml](./.gitpod.yml) launches the rails server bound to `0.0.0.0` so that the server is accessible in Gitpod. The default configuration binds to `localhost`.
* [config/environments/development.rb](./config/environments/development.rb) has been configured with `config.hosts.clear` to enable requests to the Gitpod subdomain. In this template, the Ruby on Rails configuration interface has been set to private. If this setting is changed to the public then anyone will be able to connect to the administration interface if they know the workspace name.
