#!/bin/bash
# Copyright 2023 Michael Gale <https://www.michaelgale.dev/>

# Installs fira-code powerline font for use in Gnome terminal

fonts_dir="${HOME}/.local/share/fonts"
if [ ! -d "${fonts_dir}" ]; then
    echo "mkdir -p $fonts_dir"
    mkdir -p "${fonts_dir}"
else
    echo "Found fonts dir $fonts_dir"
fi

info "Downloading Fira Code font"
version=5.2
zip=Fira_Code_v${version}.zip
curl --fail --location --show-error https://github.com/tonsky/FiraCode/releases/download/${version}/${zip} --output ${zip}

info "Unzipping Fira Code font"
unzip -o -q -d ${fonts_dir} ${zip}

info "Cleaning up"
rm ${zip}

info "Running: fc-cache -f"
fc-cache -f

info "Fira Code font installed"
info "Please set the font in your terminal settings"
