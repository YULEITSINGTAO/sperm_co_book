## rename file

for (i in c(1:22)) {
  
  vcf_directory <- paste0("../datasets/sperm_vcf_file/selected_vcf/QUAL_and_RGQ/chr", i, "/")
    
  filelist <- list.files(path = vcf_directory, pattern = "*.vcf.gz$", all.files = FALSE,
             full.names = TRUE, recursive = FALSE, ignore.case = FALSE, include.dirs = FALSE, no.. = FALSE)
  
  for (filename in filelist) {
    new_name <- gsub("N", "NF", filename)
    new_name <- gsub("NFF", "NF", new_name)
    
    file.rename(filename, new_name)
  }
}


filelist
filename <- filelist[80]
