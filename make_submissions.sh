###
 # @Created by: Xiang Pan
 # @Date: 2022-04-25 21:51:43
 # @LastEditors: Xiang Pan
 # @LastEditTime: 2022-04-25 22:03:51
 # @Email: xiangpan@nyu.edu
 # @FilePath: /NYU_DL_Project/make_submissions.sh
 # @Description: 
### 
# rm -rf submissions
mkdir submissions
mkdir submissions/outputs
cp ./vicreg/dataset.py ./submissions/
cp ./vicreg/evaluate.py ./submissions/
cp ./vicreg/engine.py ./submissions/