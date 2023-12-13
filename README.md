```bash
git clone https://github.com/maxime-langevin/diverse_molecule_generation.git
git submodule update --init --recursive --remote
conda create -c conda-forge -n diverse_molgen rdkit
conda activate diverse_molgen
pip install -r requirements.txt
```

```bash
python run.py --nruns 10 --dataset drd2
```

```bash
python run.py --nruns 10 --dataset egfr
```

```bash
python run.py --nruns 10 --dataset drd2 --use_memory_rl True
```
