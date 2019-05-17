
#==================================================================================================#
# ======= Set our working directory 
#          (ACTUALLY WD is not the site but the .Rproject.) 

#======= setwd("./MexicoWaterSurvey") | setwd("./BrazilWaterSurvey") {REDUNDANT: in the .sh file}. 
# getwd()



#==================================================================================================#
#======= Copy [[OUTPUT]] FILES FROM PRIVATE WD to website corresp FOLDERS. 
# {OKKIO, I am NOT in .Rproject, because the Lula_deploy.sh sets /DataMEX/MEXwatersurvey}
from_dir <- here::here("07_output")
to_dir <- here::here("BrazilWaterSurvey", "output")

files <- list.files(path = from_dir , full.names = TRUE) #,  pattern = ".png$" )
move <- files[sapply(files, file.size) < 100000000] # < 100 MB or Github will get stuck

# --- SYNTAX
# file.copy(list.of.files, new.folder)

file.copy( move, to = to_dir , overwrite = T )
# if I had listed with full.names = F
# file.copy( file.path(from_dir, move), to = to_dir  )


#======= Copy [[DATA]](??? RESTRICTED???) FILES FROM PRIVATE WD to website corresp FOLDERS. 
from_dir2 <- here::here("03_cleandata")
to_dir2 <- here::here("BrazilWaterSurvey", "data")

files2 <- list.files(path = from_dir2 , full.names = TRUE, pattern =  ".*\\.Rdata$")  # pattern =  "(^oper|^pres|^Census).*\\.Rdata$") 
move2 <- files2[sapply(files2, file.size) < 100000000] # < 100 MB or Github will get stuck

# --- SYNTAX
# file.copy(list.of.files, new.folder)
file.copy( move2, to = to_dir2 , overwrite = T )



#==================================================================================================#
# ======= https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html

# ======= list which files will be removed
rmarkdown::clean_site(preview = TRUE)



# ======= actually remove the files
rmarkdown::clean_site()


# =======r ender your site. 
rmarkdown::render_site()

# ======= render just one page
# rmarkdown::render_site("index.Rmd")
