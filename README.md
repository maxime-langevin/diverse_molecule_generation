# Balancing exploration and exploitation in de-novo drug design 


![concept_diversity (1)](https://github.com/maxime-langevin/diverse_molecule_generation/assets/26231992/694cb25e-71f7-416d-9bc3-a38f6272e49e)

## Installation 

The following instructions will allow you to : 
* clone the repository
* clone the submodules used by the repository
* create a dedicated environment and install requirements
  
```bash
git clone https://github.com/maxime-langevin/diverse_molecule_generation.git
git submodule update --init --recursive --remote
conda create -c conda-forge -n diverse_molgen rdkit
conda activate diverse_molgen
pip install -r requirements.txt
```
## Reproducing results from the paper 


### Molecular generation 

The following python scripts will run molecular generation in different settings : 

* Diverse molecule generation on the DRD2 dataset
```bash
python run.py --nruns 10 --dataset drd2
```

* Diverse molecule generation on the EGFR dataset
```bash
python run.py --nruns 10 --dataset egfr
```
* Memory RL reimplementation on the DRD2 dataset
* 
```bash
python run.py --nruns 10 --dataset drd2 --use_memory_rl True
```
The EGFR and DRD2 datasets were extracted from the ExCAPE-DB database (Sun, J.; Jeliazkova, N.; Chupakhin, V.; Golib-Dzib, J.-F.; Engkvist, O.; Carlsson, L.;
Wegner, J.; Ceulemans, H.; Georgiev, I.; Jeliazkov, V., et al. ExCAPE-DB: an integrated
large scale dataset facilitating Big Data analysis in chemogenomics. J. Cheminf. 2017, 9, 1–9. 3.)

NB : this step can be skipped, using already generated trajectories in the `results` and `results_memory_RL` folders. 

### Reproducing results 

Reproducing the graphs from the paper can be achieved by running all the notebooks at the root of the repository : 

```bash
drd2_trajectories_beta_0.ipynb
```
to reproduce Figure 4.

```bash
drd2_trajectories_beta_100.ipynb
```
to reproduce Figure 8. 

```bash
drd2.ipynb
```
to reproduce Figure 5, 7a, 9a, 11a, 11b, 11c and 14. 

```bash
egfr.ipynb
```
to reproduce Figure 6, 7b, 9b, 11d. 

```bash
compute_correlation_coefficient.ipynb
```
to reproduce Figure 12. 

```bash
drd2_with_memory_RL.ipynb
```
to reproduce Figure 13. 

NB : Some cells are commented in `egfr.ipynb` and `drd2.ipynb` and the results of those cells already saved in the `robustness_experiments` folder, as they take a very long time to run. Please uncomment them if you want to run them and regenerate the results stored in `robustness_experiments` from scratch. 
