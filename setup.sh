# Init .bashrc.d directory
echo "Init .bashrc.d directory in your home directory"
mkdir -p ~/.bashrc.d
chmod 770 ~/.bashrc.d

echo "Add .bashrc.d directory at the end of your .bashrc file if not exists"
if [ -z "$(cat ~/.bashrc | grep '.bashrc.d')" ]; then
  cat >> ~/.bashrc <<EOL

  # Load all bashrc files in .bashrc.d directory 
  # instead of write aliases in .bashrc file.
  for file in ~/.bashrc.d/*.bashrc;
  do
    source "\$file"
  done
EOL
fi

echo "Add a bashrc alias to reload bashrc files"
echo "alias bashrc='chmod +x ~/.bashrc.d/*.bashrc; source ~/.bashrc'" > ~/.bashrc.d/bashrc.bashrc
echo "alias brc='bashrc'" >> ~/.bashrc.d/bashrc.bashrc

echo "Grant permissions to all .bashrc files in .bashrc.d directory"
chmod +x ~/.bashrc.d/*.bashrc

echo "Done !"