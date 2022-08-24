FROM fedora
RUN dnf install -y neovim git make 
RUN dnf install -y tmux wget nodejs fish which powerline gcc python3-pip
RUN groupadd -g 1000 arno
RUN useradd -u 1000 -g 1000 -G wheel -s /usr/bin/fish arno
# Update sudoers file %wheel	ALL=(ALL)	ALL
RUN sed -i "s/# %wheel/%wheel/" /etc/sudoers
WORKDIR /home/arno
COPY --chown=arno:arno nvim/init.lua  .config/nvim/
COPY --chown=arno:arno nvim/lua/*.lua  .config/nvim/lua/
COPY --chown=arno:arno *.sh bin/
COPY --chown=arno:arno *.fish bin/
COPY --chown=arno:arno *.conf bin/
USER arno
WORKDIR /home/arno/bin
RUN ./tmux_config.sh
RUN ./git_config.sh
RUN ./fish_config.fish 
RUN ./neovim_config.sh
RUN ./compilers_config.sh
