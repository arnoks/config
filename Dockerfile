FROM fedora
ARG user=${user:devuser}
RUN dnf install -y neovim git make 
RUN dnf install -y tmux wget nodejs fish which powerline gcc python3-pip
RUN groupadd -g 1000 $user
run useradd -u 1000 -g 1000 -g wheel -s /usr/bin/fish $user
# Update sudoers file %wheel	ALL=(ALL)	ALL
RUN sed -i "s/# %wheel/%wheel/" /etc/sudoers
WORKDIR /home/$user
COPY --chown=$user:$user nvim/init.lua  .config/nvim/
COPY --chown=$user:$user nvim/lua/*.lua  .config/nvim/lua/
COPY --chown=$user:$user *.sh bin/
COPY --chown=$user:$user *.fish bin/
COPY --chown=$user:$user *.conf bin/
USER $user
WORKDIR /home/$user/bin
RUN ./tmux_config.sh
RUN ./git_config.sh
RUN ./neovim_config.sh
RUN ./compilers_config.sh
RUN ./fish_config_docker.fish 
WORKDIR /home/$user
