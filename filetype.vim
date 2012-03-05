"Detect R (the statistical package) files with .r extension

if exists("did_load_filetypes")

finish

endif

augroup filetypedetect

au! BufRead,BufNewFile *.r setfiletype r

augroup END

augroup filetypedetect

au! BufRead,BufNewFile *.R setfiletype r

augroup END
