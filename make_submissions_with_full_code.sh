###
 # @Created by: Xiang Pan
 # @Date: 2022-04-25 21:51:43
 # @LastEditors: Xiang Pan
 # @LastEditTime: 2022-04-25 22:27:08
 # @Email: xiangpan@nyu.edu
 # @FilePath: /NYU_DL_Project/make_submissions.sh
 # @Description: 
### 
# rm -rf submissions
mkdir submissions_with_full_code
mkdir submissions_with_full_code/outputs
cp -f ./vicreg/transforms.py ./submissions_with_full_code/
cp -f ./vicreg/utils.py ./submissions_with_full_code/
cp -f ./vicreg/coco_utils.py ./submissions_with_full_code/
cp -f ./vicreg/coco_eval.py ./submissions_with_full_code/
cp -f ./vicreg/dataset.py ./submissions_with_full_code/
cp -f ./vicreg/evaluate.py ./submissions_with_full_code/
cp -f ./vicreg/engine.py ./submissions_with_full_code/            # engine
cp -f ./vicreg/run_evaluate_hpc.py ./submissions_with_full_code/  # evluate
cp -f ./README.md ./submissions_with_full_code/