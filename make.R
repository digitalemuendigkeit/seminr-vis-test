# This file runs all test documents

rmarkdown::render(input = "template.Rmd", output_file = "output/template.html")
rmarkdown::render(input = "simple_case.Rmd", output_file = "output/simple_case.html")
