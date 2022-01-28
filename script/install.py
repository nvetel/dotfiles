import os
import yaml

DOTFILES_DIR="~/.dotfiles"

with open('config.yml', 'r') as file:
  config = yaml.safe_load(file)

for dst, src in config['link'].items():
    src = os.path.expanduser(f"{DOTFILES_DIR}/{src}")
    dst = os.path.expanduser(dst)
    print(f"- creates {dst} -> {src}")
    os.makedirs(os.path.dirname(dst), exist_ok=True)
    os.symlink(src, dst)
