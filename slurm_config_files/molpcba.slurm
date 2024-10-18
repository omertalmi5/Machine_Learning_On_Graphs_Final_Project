#! /bin/sh

#SBATCH --job-name=molpcba_add_dropout_edited
#SBATCH --output=/home/yandex/MLWG2024/omertalmi/graphs/WeightedGraphGPS/molpcba_add_dropout_edited.out # redirect stdout
#SBATCH --error=/home/yandex/MLWG2024/omertalmi/graphs/WeightedGraphGPS/molpcba_add_dropout_edited.err # redirect stderr
#SBATCH --partition=studentkillable  # (see resources section)
#SBATCH --time=1440 # max time (minutes)
#SBATCH --signal=USR1@120 # how to end job when time’s up
#SBATCH --nodes=1 # number of machines
#SBATCH --ntasks=1 # number of processes
#SBATCH --mem=50000 # CPU memory (MB)
#SBATCH --cpus-per-task=4 # CPU cores per process
#SBATCH --gpus=2 # GPUs in total

export PYTORCH_CUDA_ALLOC_CONF=expandable_segments:True

WANDB_MODE=online python main.py --cfg configs/GPS/ogbg-molpcba-GPS.yaml wandb.use True wandb.entity omertalmi-tel-aviv-university wandb.name add_dropout-nova-molpcbaed
