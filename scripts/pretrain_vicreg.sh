start_epoch=74
run_epoch=10
end_epoch=`expr ${start_epoch} + ${run_epoch}`
cp -f ./vicreg/outputs/model_$start_epoch.pth ./vicreg/outputs/model.pth
cp -f ./vicreg/outputs/resnet50_$start_epoch.pth ./vicreg/outputs/resnet50.pth

# make sure the continue checkpoint is named model.pth
# for v100
CUDA_VISIBLE_DEVICES=0,1,2,3,5 \
python -m torch.distributed.launch --nproc_per_node=5 \
./vicreg/main_vicreg.py \
--data-dir ./unlabeled_data \
--exp-dir ./vicreg/outputs \
--arch resnet50 \
--epochs $end_epoch \
--batch-size 1000 \
--base-lr 0.1
