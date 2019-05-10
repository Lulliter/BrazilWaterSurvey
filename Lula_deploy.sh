#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (start) ================================================#
#================================== Invoke build_site.R FROM SHELL ================================#
# ======= ./BrazilWaterSurvey/build_site.R DOES THE FOLLWOING: 
# ============== 1) list which files will be removed (all ".html(s)" + "site_libs/");
# ============== 2) actually remove the above files;
# ============== 3) Render again the ./BrazilWaterSurvey/ public site. 
cd ./BrazilWaterSurvey # (build_site.R thinks it is in ./)
pwd
Rscript build_site.R 
#=========================================== (end) ================================================#


# check status
git status

# Add SOME  changes to git Index.
git add output/

git add -u
	# Add ALL changes to git Index.
	# git add -A


# Create Std commit "message"....
msg="rebuilt on `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi

# ... Commit Those changes.
git commit -m "$msg"

		# or git commit -m "free text "
		git commit -m "table in descstat"
		
# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/