library(rmake)

job <- list(
  rRule("local", "make.R"),
  rRule("github_prepare", "fetch_github.R"),
  rRule("github", "make.R", depends = "github_prepare")
)

makefile(job, "Makefile")
