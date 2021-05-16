import QuickCmd_Config	#配置文件
import os, sys
from subprocess import Popen
import re			#正则匹配
import shutil		#递归删除

def main():
	# --@# 检查参数个数
	if len(sys.argv) <= 1:
		print("good bye")
		exit()

	# --@# 处理调用参数
	argv = sys.argv[1].split()
	for i in argv:
		print(i, "\n")

	# --@# 谷歌浏览器, 空格启动, 因为空格不能识别成参数, 所以放在开头处理
	if sys.argv[1]==" ":
		open_chrome()
		exit()

	handle_map(argv[0])

	# --@# 打开目录列表设置
	if argv[0]=="#config":
		open_file_with_Notepadplusplus(GetRoot()+"\\User\\快捷打开目录列表.txt")
		exit()
	elif argv[0]=="#list":
		open_dir(GetRoot() + "\\User\\快捷打开")
		exit()

	# --@# 新建Docker容器项目
	if argv[0]=="docker-new":
		runCmd(GetRoot() + "\\script\\@在docker容器中新建项目.bat" + " " + argv[1])
		exit()
	elif argv[0]=="docker-rm":
		dockerlnk = "F:\\docker-share\\" + argv[1]
		dockerdir = "F:\\VSCode-Docker-Proj\\" + argv[1]
		if os.path.exists(dockerlnk):
			os.remove("F:\\docker-share\\" + argv[1])
		if os.path.exists(dockerdir):			
			shutil.rmtree(dockerdir)
		exit()


	# --@# 常用文本
	if argv[0]=="j":
		open_file_with_Notepadplusplus("F:\\0\\software\\Notepad++\\Notepad++会话\\@#临时会话.nppSession", "")
		exit()
	elif argv[0]=="k":
		runCmd(GetRoot() + "\\script\\@待办事项.bat")
		exit()
	elif argv[0]=="r":
		open_file_with_Notepadplusplus(GetRoot() + "\\User\\阅读收藏.txt", "-n20000000")
		exit()

	# --@# 快捷打开
	type, path = search_traversal(argv[0], QuickCmd_Config.config["quick_open"])
	if type=="dir":
		open_dir(path)
		exit()
	elif type=="file":
		open_file_in_default_way(path)
		exit()
	else:
		print("not found in quick_open")
	
	# --@# 只读打开笔记
	type, path = search_traversal(argv[0], QuickCmd_Config.config["my_note"])
	if type=="dir":
		open_dir(path)
		exit()
	elif type=="file":
		open_file_with_Notepadplusplus(path)
		exit()
	else:
		print("not found in my_note")
	# os.system("pause")

################################################################################
################################################################################
################################################################################

def GetRoot():
	toolsetRoot = os.environ.get('toolsetRoot')
	return toolsetRoot

def runCmd(argv):
	# p = Popen(input, cwd=r"F:\\0\\script\\QuickCmd")
	p = Popen(argv, cwd=None)
	stdout, stderr = p.communicate()	#显示控制台打印

def open_file_with_Notepadplusplus(path, argv="-ro"):
	cmd = QuickCmd_Config.config["editor_path"] + " " + argv + " " + path
	p = Popen(cmd, cwd=None)
	# stdout, stderr = p.communicate()	#注释此行以不显示控制台打印
	return

def open_dir(dir_path):
	print(dir_path)
	os.system("start explorer %s" % dir_path)

def open_file_in_default_way(file_path):
	# 参考: https://segmentfault.com/q/1010000002441500	
	os.startfile(file_path)	#Windows
	# subprocess.call(["xdg-open", file])	#Linux
	# subprocess.call(["open", file])	#Mac

def open_chrome():
	runCmd("C:\\Program Files (x86)\\Google\\Chrome\\Application\\chrome.exe")

def search_traversal(search_str, from_path_list):
	pattern = ".*{}.*".format(search_str)
	print(pattern)
	prog = re.compile(pattern, flags=re.IGNORECASE)
	for dir_root in from_path_list:
		for parent,dirnames,filenames in os.walk(dir_root):
			#三个参数, 分别返回: 1.父目录 2.所有文件夹名字(不含路径) 3.所有文件名字
			for filename in filenames:
				if prog.match(filename):
					print("found file: ", os.path.join(parent, filename))
					return "file", os.path.join(parent, filename)
			for dirname in dirnames:			
				if prog.match(dirname):
					print("found dir: ", os.path.join(parent, dirname))
					return "dir", os.path.join(parent, dirname)
	return "None", None

def handle_map(str):
	cmd_map = {
		"cmd" : runCmd
		, "dir" : open_dir
		, "notepad++" : open_file_with_Notepadplusplus
		, "file_default_open" : open_file_in_default_way
	}
	for item in QuickCmd_Config.str2cmd:
		if item["str"]==str:
			cmd_map[item["cmd"]](item["path"])
			exit()




if __name__ == "__main__":
	main()

'''	保留
脚本所在路径, 参考: https://blog.csdn.net/vitaminc4/article/details/78702852
runCmd(os.path.split(os.path.realpath(__file__))[0] + "\\..\\@待办事项.bat")
'''