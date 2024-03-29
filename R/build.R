# Adapted from https://yutani.rbind.io/post/2017-10-25-blogdown-custom/

# catch "local" arg passed from blogdown::build_site()
local <- commandArgs(TRUE)[1] == "TRUE"

# list up Rmd files
Rmd_files <- list.files("content", "\\.Rmd$", recursive = TRUE, full.names = TRUE)

# list up md files
md_files  <- sub("\\.Rmd$", ".md", Rmd_files)
names(md_files) <- Rmd_files

# knit it when:
#   1) the correspondent md file does not exist yet
#   2) the Rmd file was updated after the last time md file had been generated
needs_knitted <- !file.exists(md_files) | utils::file_test("-ot", md_files, Rmd_files)

message("skip: \n    ", paste(Rmd_files[!needs_knitted], collapse = "\n    "))

for (rmd in Rmd_files[needs_knitted]) {
	base_name <- tools::file_path_sans_ext(basename(rmd))
	knitr::opts_chunk$set(
		fig.path = glue::glue("post/{base_name}_files/figure-html/")
	)

	set.seed(1984)
	knitr::knit(input = rmd, output = md_files[rmd], encoding = "UTF-8")
}

blogdown::hugo_build(local = local)
