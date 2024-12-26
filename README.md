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

# II. install conda on WSL
1. Open Ubuntu and run
```bash
mkdir -p ~/miniconda3
wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda3/miniconda.sh
bash ~/miniconda3/miniconda.sh -b -u -p ~/miniconda3
rm ~/miniconda3/miniconda.sh
```
2. After the installation close and open Ubuntu or run
```bash
source ~/miniconda3/bin/activate
conda --version
```
