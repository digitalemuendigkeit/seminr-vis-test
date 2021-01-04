# This file runs all test documents


library(stringr)
# run test files
files <- dir(pattern = "*.Rmd")

# remove the readme
files <- files[!files %in% c("README.Rmd")]

output <- str_replace(files, ".Rmd", ".html")
output <- paste0("output/", output)


for (i in 1:length(files)) {
  cat("Rendering document...")
  rmarkdown::render(input = files[i], output_file = output[i])
}

