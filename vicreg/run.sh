CUDA_VISIBLE_DEVICES=0,1,2,3,4,5 python -m torch.distributed.launch --nproc_per_node=6 main_vicreg.py --data-dir ../unlabeled_data --exp-dir ./outputs --arch resnet50 --epochs 100 --batch-size 264 --base-lr 0.3