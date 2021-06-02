library(workflowr)

#设置
wflow_git_config(user.name = "xiaomaohao", user.email = "mouse107.5@gmail.com")

#启动
wflow_start("teacher_status")
wflow_build() # knit new r-markdown

wflow_view()  # view the website without knit
wflow_status()

wflow_publish(c("analysis/index.Rmd", "analysis/about.Rmd", "analysis/license.Rmd"),
              "Publish the initial files for myproject")  # publish to local

wflow_status()

wflow_use_github("xiaomaohao")

wflow_git_push(dry_run = FALSE)  #push to github

wflow_open("analysis/outline.Rmd")

wflow_build()  ##由rmarkdown file 生成html
wflow_status()

setwd("/Users/yangyongye/R/teacher_status")

wflow_publish(c("analysis/index.Rmd","analysis/Overview.Rmd"), "Add my 2020, 10, 21 analysis")
wflow_git_push()


##教师国标工资文章
wflow_status()
wflow_build()  ##由rmarkdown file 生成html
wflow_publish(c("analysis/salary10.Rmd","analysis/index.Rmd"), "Add my 2021, 06, 01 analysis")
wflow_git_push()


## credential setting

usethis::create_github_token()
library(credentials)
set_github_pat()   ## 设置pat
git_credential_ask()

wflow_build()  ##由rmarkdown file 生成html
wflow_publish(c("analysis/teacher_recruit.Rmd","analysis/index.Rmd","analysis/teacher_salary.Rmd","analysis/employment_contract.Rmd"),
              "Add my 2021, 06, 01 analysis")
wflow_git_push()

