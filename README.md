# Brazil WSS Operators Survey 2018/2019


### Description and context: 
This is a static webpage created to track the progress of a survey on Brazil WSS Operators. The survey is part of a larger effort to collect original data in preparation of the publication **"Development in America" 2020** that will focus on Infrastructure. This specific survey is sponsored by the **Interamerican Development Bank (IADB)**, Water Division, Knowledge Team  [WSA Knowledge](https://idbg.sharepoint.com/sites/WSAknowledge), where I work as a consultant. 


### Content: 
This webpage http://brazilwatersurvey.lulliter.com/ has been built as an `R Markdown website`, using `Jekyll` and `GitHub Pages` as a static site generator - then redirected from Github to my custom domain on `AWS`. 

The code for the page is on this [Github repo](https://github.com/Lulliter/BrazilWaterSurvey), which is actually a sud-directory of the research project. The latter (not publicly disclosed because includes confidential data) is on the IADB company OneDrive cloud.   

### Webpage publishing:
I created two little helper scripts: 

1. **build_site.R** which cleans up and re-renders the site locally with `rmarkdown::render_site()`
2. **Lula_deploy.sh** which pushes the changes to the remote repository (on Github) and publishes the updated site. 


### Creators: 
This page was created by Luisa Mimmi (Research Fellow - consultant at IADB) but builds on data collected by various IADB colleagues and partner organizations. See [**Info page**](http://brazilwatersurvey.lulliter.com/info.html) for all due credits. 

### WARNING: 
<span style="color:red">Please note, this is still a work in progress, subject to change and not ready for dissemination. </span>
Feel free to contact me for questions (lmm76@georgetown.edu or lmmimmi@iadb.org)  