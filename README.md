Albany R Users Group
================

<a href='https://fall2021.data606.net'><img src='static/images/Albany_R_Users_Hex.png' align="right" height="200" /></a>

Contact: [Jason Bryer, Ph.D.](mailto:jason@bryer.org)  
Meetup Page: <https://www.meetup.com/Albany-R-Users-Group/>  
Slack Channel:
[albanyrusers.slack.com](https://join.slack.com/t/bryer/shared_invite/zt-zkfnvcfo-ftJ_z~OrbiQv6dB5TYlyIA)

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
