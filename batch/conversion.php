<?php
$extension = 'php';
$path = getcwd() . '\\..\\php';
echo $path;

$conversionFile = fopen(getcwd() . '\\JSP_to_PHP.txt', 'r');
if ($conversionFile) {
	while (($oldText = fgets($conversionFile)) !== false) {
		$newText = fgets($conversionFile);
		echo ' | ' . $oldText . ' --> ' . $newText . ' ***** ';
		$directory = new DirectoryIterator($path);
		foreach ($directory as $fileinfo) {
			$currentExtension = $fileinfo->getExtension();
			if ($fileinfo->isFile() && $fileinfo->isReadable() && $currentExtension == $extension) {
				$filePathName = $path . "\\" . $fileinfo->getFilename();
				file_conversion($oldText, $newText, $filePathName);
			}
		}
	}
	fclose($conversionFile);
} else {
	echo 'Errore apertura file';
}

function file_conversion($oldText, $newText, $filePathName) {
	$fileContent = file_get_contents($filePathName);
//	$fileContent = get_content($filePathName);
	if (strpos($fileContent, $oldText)) {
		$fileContent = str_replace($oldText, $newText, $fileContent);
//		$fileContent = replace_in_file($oldText, $newText, $fileContent);
		file_put_contents($filePathName, $fileContent);
	}
}

function get_content($filePathName) {
	return $fileContent = file_get_contents($filePathName);
}

function replace_in_file($oldText, $newText, $fileContent) {
	return $fileContent = str_replace($oldText, $newText, $fileContent);
}
?>