<?php
/*
 * Extension de la clase ZipArchive para poder comprimir
 * un directorio recursivamente
 */
class Zipper extends ZipArchive {

// Function to recursively add a directory,
// sub-directories and files to a zip archive
function addFolder($dir, $zipdir = ''){
    if (is_dir($dir)) {
        if ($dh = opendir($dir)) {

            //Add the directory
            $this->addEmptyDir($dir);

            // Loop through all the files
            while (($file = readdir($dh)) !== false) {

                //If it's a folder, run the function again!
                if(!is_file($dir . $file)){
                    // Skip parent and root directories
                    if( ($file !== ".") && ($file !== "..")){
                        $this->addFolder($dir . $file . "/", $zipdir . $file . "/");
                    }

                }else{
                    // Add the files
                    $this->addFile($dir . $file, $zipdir . $file);

                }
            }
        }
    }
}

}

?>