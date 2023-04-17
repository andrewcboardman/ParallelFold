# Create a miniconda environment for ParaFold/AlphaFold
# Recommend you to use python 3.8, version < 3.7 have missing packages, python versions newer than 3.8 were not tested
conda env create -f environment.yml
conda install -y -c bioconda hmmer=3.3.2 hhsuite=3.3.0 kalign2=2.04

# use pip3 to install most of packages
pip3 install -r requirements.txt

# downgrade jaxlib to the correct version, matches with cuda and cudnn version
pip3 install --upgrade --no-cache-dir jaxlib==0.3.25+cuda11.cudnn82 -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html

chmod +x run_alphafold.sh