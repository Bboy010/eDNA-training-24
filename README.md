# eDNA-training-24  by LearnerWorld ![learnerworld-logo](https://github.com/user-attachments/assets/7c10bd02-c8d9-44a7-8acc-ccf3c4809b1a)

This training is design for helping first starter in Bioinformatics using the pipeline demo from nf-core
--- 
*Before you start you can see the pipeline there [nextflow/demo](https://nf-co.re/demo/1.0.1/)*
![nf-core-demo](https://github.com/user-attachments/assets/c090df3e-bf0c-47ef-af6d-8196c1010e75)

### follow these steps to run the pipeline
---
# I. install Ubuntu WSL on windows
1. Open powershell ⤴️ on admin mode
2. run
   ```bash
   wsl --install
   ```
4. verify that the installation is done with
   ```bash
    wsl --list --verbose
   ```
6. clic on windows 🪟 and look for Ubuntu
*At this step if Ubuntu not run check if your virtual system is active on windows or install it on a [virtual environement](https://www.virtualbox.org/)*

# II. install conda
a. on WSL
1. Open Ubuntu and run
```bash
mkdir -p ~/miniconda3
```
```bash
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
```
```bash
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh
```
2. After the installation close and open Ubuntu or run
```bash
source ~/miniconda3/bin/activate
```
```bash
conda --version
```
<details>
<summary>b. on macOS</summary>
<br>
1. Install Homebrew
   <br>
   
   ```bash
   /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
   ```
   <br>
   
2. install Miniconda
   ```bash
   brew install --cask miniconda
   ```
   <br>
3. add Miniconda path
   ```bash
   echo 'export PATH="/usr/local/miniconda3/bin:$PATH"' >> ~/.zshrc
   source ~/.zshrc
   ```
   <br>
4. check installation
   ```bash
   conda --version
   ```
</details>

---
# III. install your working environment
![tree eDNA-t](https://github.com/user-attachments/assets/2d70eba7-f09a-4972-95eb-75b3be24698b)

1. download the working directory
```bash
wget https://github.com/Bboy010/eDNA-training-24/archive/refs/heads/main.zip
```
2. unzip the folder
```bash
sudo apt install unzip
```
```bash
unzip main.zip
rm –r  main.zip
```
3. create Conda environment
```bash
cd eDNA-training-24-main
```
```bash
cd config/
```
```bash
conda env create -f eDNA-training-24.yml
```
```bash
conda activate eDNA-training-24
conda init
```
---
# IV. Install Nextflow with Conda
1. Nextflow installation
```bash
sudo apt update && sudo apt upgrade -y
conda config --add channels defaults
conda config --add channels bioconda
conda config --add channels conda-forge
```
```bash
conda install -c bioconda nextflow
```
2. Create and activate hte  nextflow environment
```bash
conda create --name nextflow nextflow
```
```bash
conda activate nextflow
```
3. Check the installation
```bash
nextflow info
```
---
# V. Run the pipeline
1. Check the working space available
```bash
sudo apt install htop
htop
```
2. Adjust configuration file if necessary
```bash
cd eDNA-training-24-main
```
```bash
vi config/custom.config
```
3. Make run_pipeline.sh executable
```bash
chmod +x run_pipeline.sh 
```
4. Activate nextflow then launch the pipeline
```bash
conda activate nextflow
```
```bash
bash run_pipeline.sh
```
---

[^1]: 🤦[HONGO](hkoffianderson@gmail.com) 🔗[linkedIn](https://www.linkedin.com/in/koffi-anderson-hongo-b165a4170/)
