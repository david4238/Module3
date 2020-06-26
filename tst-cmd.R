
rmarkdown::render("/Users/davidpierrot/RepTemplates/Module3/steakarticleparams.Rmd",
                  params = list(region= "Mountain"))

render_report <-function(regionvar){
  template <-"/Users/davidpierrot/RepTemplates/Module3/steakarticleparams.Rmd"
  outfile <-sprintf("steakArticle_%s.html",regionvar)
  parameters <-list(region = regionvar)
  rmarkdown::render(template,
                    output_file=outfile,
                    params=parameters)
  invisible(TRUE)
}

render_report("Pacific")

