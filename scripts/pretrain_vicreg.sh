start_point=40
mv ./vicreg/outputs/model_$start_point.pth ./vicreg/outputs/model.pth
mv ./vicreg/outputs/resnet50_$start_point.pth ./vicreg/outputs/resnet50.pth

# make sure the continue checkpoint is named model.pth
# for v100
CUDA_VISIBLE_DEVICES=0,1,2,3,5,6 \
python -m torch.distributed.launch --nproc_per_node=6 \
./vicreg/main_vicreg.py \
--data-dir ./unlabeled_data \
--exp-dir ./vicreg/outputs \
--arch resnet50 \
--epochs 60 \
--batch-size 1056 \
--base-lr 0.3 \
--wd 0