python -m torch.distributed.launch --nproc_per_node=8 finetune.py --exp-dir ./outputs --epochs 100 --batch-size 12 --lr 0.005 --wd 0.0005 --momentum 0.9
