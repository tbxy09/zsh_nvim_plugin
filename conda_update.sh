conda config --add channels conda-canary
conda update conda
conda config --system --add pinned_packages conda-canary::conda
echo ". /root/anaconda/etc/profile.d/conda.sh">>.zshrc
