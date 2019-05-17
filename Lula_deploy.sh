#==================================RESOURCES ON RMARKDOWN_SITE=====================================#
#   https://bookdown.org/yihui/rmarkdown/rmarkdown-site.html
#   https://rmarkdown.rstudio.com/lesson-13.html
#==================================================================================================#



#=========================================== (start) ================================================#
#================================== Invoke copy_folders.R  & build_site.R FROM SHELL ================================#
cd ./BrazilWaterSurvey # (otherwise thinks it is in ./)
pwd
Rscript copy_folders.R 
Rscript build_site.R 
#=========================================== (end) ================================================#


# check status
git status

# Add SOME  changes to git Index.
git add output/
git add copy_folders.R

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
		git commit -m "new Lula_deploy.sh // build_site.R // copy_folders.R"
		
# Push source and build repos.
git push origin master

# # Come Back up to the Project Root
# cd ..
# 
# # Delete the local repository in the shell:
# rm -rf myrepo/