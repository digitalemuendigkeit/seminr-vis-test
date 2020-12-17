# This file runs all test documents

#update package
remotes::install_github("digitalemuendigkeit/seminr",
                        ref = "model-viz", force = TRUE, upgrade = "never")

# run test files
rmarkdown::render(input = "_template.Rmd", output_file = "output/_template.html")
rmarkdown::render(input = "simple_case.Rmd", output_file = "output/simple_case.html")
rmarkdown::render(input = "theme_test.Rmd", output_file = "output/theme_test.html")
