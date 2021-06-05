import sys, re, os

def main():
	# file_name = sys.argv[1]
	# file_name = sys.argv[1]
	# file_name = file_name.replace("\\", "\\\\")
	num = sys.argv[1]

	toolsetRoot = os.environ.get('toolsetRoot')
	file_name = toolsetRoot + "\\code\\script\\ClipboardRegex\\clipboard.txt"

	if num == '1':
		tag = "@@@@"
	elif num == '2':
		tag = "####"
	else:
		tag = "~~~~"

	rfd = open(file_name, "r")
	lines = rfd.readlines()
	rfd.close()
	for row in range(len(lines)):
		lines[row] = tag + lines[row]

	wfd = open(file_name, "w")
	wfd.writelines(lines)
	wfd.close()

if __name__ == "__main__":
	main()