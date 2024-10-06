#! /bin/sh

#SBATCH --job-name=add_residual-nova
#SBATCH --output=/home/yandex/MLWG2024/omertalmi/graphs/WeightedGraphGPS/add_residual-nova.out # redirect stdout
#SBATCH --error=/home/yandex/MLWG2024/omertalmi/graphs/WeightedGraphGPS/add_residual-nova.err # redirect stderr
#SBATCH --partition=studentkillable  # (see resources section)
#SBATCH --time=500 # max time (minutes)
#SBATCH --signal=USR1@120 # how to end job when time’s up
#SBATCH --nodes=1 # number of machines
#SBATCH --ntasks=1 # number of processes
#SBATCH --mem=50000 # CPU memory (MB)
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gpus=1 # GPUs in total


WANDB_MODE=online python main.py --cfg configs/GPS/ogbg-molhiv-GPS.yaml wandb.use True wandb.entity omertalmi-tel-aviv-university wandb.name add_residual-nova
