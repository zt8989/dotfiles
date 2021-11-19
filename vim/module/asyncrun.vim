let g:asyncrun_rootmarks = ['.git', '.svn', '.root', '.project', '.hg']

noremap <silent><f4> :AsyncTask file-test<cr>
noremap <silent><f5> :AsyncTask file-run<cr>
noremap <silent><f6> :AsyncTask project-run<cr>
noremap <silent><f7> :AsyncTask project-build<cr>
noremap <silent><f9> :AsyncTask file-build<cr>
