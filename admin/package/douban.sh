#!/bin/sh
ScriptPath=$(cd "$(dirname "$0")"; pwd)
cd ${ScriptPath}
cd ../
PanelPath=$(pwd)
cd ../
echo " "
echo "=========================================================================================="
echo "请确认删除以下文件以便重新生成，确认按下回车"
echo "  - source/books/index.html "
echo "  - source/movies/index.html "
echo "  - source/assets/douban-loading.gif "
echo "=========================================================================================="
echo " "
read answer
rm -f source/books/index.html
rm -f source/movies/index.html
rm -f source/assets/douban-loading.gif
echo "删除成功！"
echo " "
echo "=========================================================================================="
echo "按下 回车 开始重新生成..."
echo " "
echo "建议打开快帆进行国内加速。"
echo "=========================================================================================="
echo " "
read answer
hexo douban
echo " "
echo "=========================================================================================="
echo "抓取完毕！"
echo " "
echo "即将备份到 /source/ 文件夹..."
echo "=========================================================================================="
echo " "
echo "备份 books/ 文件夹..."
cp public/books/index.html source/books/
sleep 0.5
echo "成功！"
echo " "
echo "备份 movies/ 文件夹..."
cp public/movies/index.html source/movies/
sleep 0.5
echo "成功！"
echo " "
echo "备份 assets/ 文件夹..."
cp public/assets/douban-loading.gif source/assets/
sleep 0.5
echo "成功！"
echo " "
echo "=========================================================================================="
echo "备份完毕！请检查是否备份正确。"
echo " "
echo "1. 请检查 source/books/ 文件夹 是否包含 index.html，检查后按下回车"
echo "=========================================================================================="
echo " "
ls source/books/
read answer
echo "=========================================================================================="
echo "2. 请检查 source/movies/ 文件夹 是否包含 index.html，检查后按下回车"
echo "=========================================================================================="
echo " "
ls source/movies/
read answer
echo "=========================================================================================="
echo "3. 请检查 source/assets/ 文件夹 是否包含 douban-loading.gif，检查后按下回车"
echo "=========================================================================================="
echo " "
ls source/assets/
read answer
echo "=========================================================================================="
echo "检查完毕！如果抓取、备份失败，请返回主菜单再重复一次。"
echo " "
echo "即将返回主菜单，请稍等..."
echo "=========================================================================================="
echo " "
sleep 1
exec ${PanelPath}/admin.sh
