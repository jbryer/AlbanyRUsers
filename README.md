Albany R Users Group
================

# Albany R Users Group Website

Contact: [Jason Bryer, Ph.D.](mailto:jason@bryer.org)  
Meetup Page: <https://www.meetup.com/Albany-R-Users-Group/>

Theme: <https://github.com/theNewDynamic/gohugo-theme-ananke>

``` r
blogdown::new_site(dir = '.', 
                   theme = 'theNewDynamic/gohugo-theme-ananke',
                   install_hugo = FALSE)
```

``` r
blogdown::serve_site()
blogdown::build_site()
```
