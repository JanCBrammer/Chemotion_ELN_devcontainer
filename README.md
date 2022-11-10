**A Visual Studio Code devcontainer for the Chemotion ELN[^1]**

Copying the `.devcontainer/` directory into the root of your local Chemotion ELN repository enables you to run and edit the ELN inside a Visual Studio Code development-container.

Prerequisites:
* Visual Studio Code
  * `Dev Containers` extension (ms-vscode-remote.remote-containers)
* Docker
  * non-root user can issue Docker commands: https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user
* Local clone of https://github.com/ComPlat/chemotion_ELN
  * make sure to remove the `.development` suffix from the `.env.development` file, otherwise the container won't run


How to configure Ruby debugging in `.vscode/launch.json`:
* https://andyv.me/til/debug-a-ruby-on-rails-server-using-vs-code/
* https://github.com/rubyide/vscode-ruby/blob/main/docs/debugger.md
* https://github.com/Microsoft/vscode-recipes/blob/2174a750102a76142378ea08dbbb4a576dc6d1d5/debugging-Ruby-on-Rails/README.md


[^1]:https://github.com/ComPlat/chemotion_ELN
