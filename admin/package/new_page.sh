#!/bin/sh
ScriptPath=$(cd "$(dirname "$0")"; pwd)
cd ${ScriptPath}
cd ../
PanelPath=$(pwd)
cd ../
echo "【新建页面】"
echo "  - 请输入新页面的 英文 名称"
echo "    [注意] 空格会被自动替换为短线 ( - ) "
echo " "
echo " << 返回主菜单，请输入：0"
echo " "
read PageName

if [ "$PageName" == "0" ]; then
	echo " "
	echo "即将返回主菜单，请稍等..."
	echo " "
	sleep 0.5
	exec ${PanelPath}/admin.sh
else
	if [ ! $PageName ]; then
		echo " "
		echo "输入错误，请返回重新输入..."
		echo " "
		sleep 1.5
		exec ${ScriptPath}/new_page.sh
	else
		echo " "
		echo "=========================================================================================="
		echo "即将新建 ${PageName} 页面并打开编辑器，请稍等..."
		echo "=========================================================================================="
		echo " "
		sleep 1
		hexo new page "$PageName"
		echo " "
		echo "=========================================================================================="
		echo "想删除刚才创建的 ${PageName} 页面吗？"
		echo "  - 删除：输入 delete ${PageName}"
		echo "  - 保存并返回主菜单：直接回车"
		echo "=========================================================================================="
		echo " "
		read delete
		if [ "$delete" == "delete ${PageName}" ]; then
			echo " "
			echo "即将删除刚才创建的 ${PageName} 页面..."
			echo " "
			sleep 0.5
			rm -rf source/${PageName}
			sleep 0.5
			echo "删除成功！即将返回主菜单..."
			sleep 1
		fi
		exec ${PanelPath}/admin.sh
	fi
fi
