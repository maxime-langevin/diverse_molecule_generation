```bash
git clone https://github.com/maxime-langevin/diverse_molecule_generation.git
git submodule update --init --recursive --remote
conda create -c conda-forge -n diverse_molgen rdkit
conda activate diverse_molgen
pip install -r requirements.txt
```

```bash
python run.py --nruns 5 --dataset CHEMBL3888429
```

```bash
python run.py --nruns 5 --dataset CHEMBL1909203
```

```bash
python run.py --nruns 5 --dataset CHEMBL3888429 --use_memory_rl True
```