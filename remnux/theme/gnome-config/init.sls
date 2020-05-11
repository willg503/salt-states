{% set user = salt['pillar.get']('remnux_user', 'remnux') %}

{% if user == "root" %}
  {% set home = "/root" %}
{% else %}
  {% set home = "/home/" + user %}
{% endif %}

include:
  - remnux.config.user
  - remnux.theme.core.gnome-shell-extensions
  - remnux.theme.core.gnome-terminal
  - remnux.theme.core.gnome-tweaks

remnux-gnome-config-logo:
  file.managed:
    - name: /usr/local/share/remnux/remnux-logo.png
    - source: salt://remnux/theme/gnome-config/remnux-logo.png
    - makedirs: True

remnux-gnome-config-script:
  cmd.script:
      - name: /usr/local/share/remnux/gnome-config.sh
      - source: salt://remnux/theme/gnome-config/gnome-config.sh
      - mode: 755
      - makedirs: True
      - runas: {{ user }}
      - watch:
        - file: remnux-gnome-config-logo
      - require:
        - user: remnux-user-{{ user }}
        - sls: remnux.theme.core.gnome-shell-extensions

remnux-gnome-config-autostart-terminal:
  file.managed:
    - replace: False
    - user: {{ user }}
    - group: {{ user }}
    - name: {{ home }}/.config/autostart/gnome-terminal.desktop
    - source: salt://remnux/theme/gnome-config/gnome-terminal.desktop
    - makedirs: True
    - require:
      - sls: remnux.theme.core.gnome-terminal

remnux-gnome-config-autostart-ignore-lid-switch-tweak:
  file.managed:
    - replace: False
    - user: {{ user }}
    - group: {{ user }}
    - name: {{ home }}/.config/autostart/ignore-lid-switch-tweak.desktop
    - source: salt://remnux/theme/gnome-config/ignore-lid-switch-tweak.desktop
    - makedirs: True
    - require:
      - sls: remnux.theme.core.gnome-tweaks

remnux-gnome-config-terminal-profiles-file:
  file.managed:
    - name: /usr/local/share/remnux/terminal-profiles.ini
    - source: salt://remnux/theme/gnome-config/terminal-profiles.ini
    - user: root
    - group: root
    - mode: 0644
    - makedirs: True
    - require:
      - sls: remnux.theme.core.gnome-terminal

remnux-gnome-config-terminal-profiles-install:
  cmd.run:
    - name: dconf load /org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9/ < /usr/local/share/remnux/terminal-profiles.ini
    - runas: {{ user }}
    - cwd: {{ home }}
    - shell: /bin/bash
    - watch:
      - file: remnux-gnome-config-terminal-profiles-file