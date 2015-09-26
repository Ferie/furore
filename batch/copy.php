<?php
$extension = 'jsp';
$newExtension = 'php';
$pathCopy = getcwd() . '\\..\\jsp';
$pathCopyTo = getcwd() . '\\..\\php';
echo ' | Inizio copia dei file: ' . $pathCopy . ' --> ' . $pathCopyTo . ' *** ';

$directory = new DirectoryIterator($pathCopy);
foreach ($directory as $fileinfo) {
	$currentExtension = $fileinfo->getExtension();
    if ($fileinfo->isFile() && $fileinfo->isReadable() && $currentExtension == $extension) {
		$filePathName = $pathCopy . "\\" . $fileinfo->getFilename();
		$newFilename = $fileinfo->getBasename('.' . $extension);
		$newPathFilename = $pathCopyTo . "\\" . $newFilename . '.' . $newExtension;
		copy($filePathName, $newPathFilename);
    }
}
?>