cd ./vicreg

CUDA_VISIBLE_DEVICES=4 torchrun --nproc_per_node=1 --master_port=47770 \
finetune_detr.py \
--exp-dir ./outputs \
--epochs 100 \
--batch-size 2 \
--lr 0.005 \
--wd 0.0005 \
--momentum 0.9
