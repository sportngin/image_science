require 'mkmf'

include_path = '/opt/homebrew/include:/usr/local/include:/usr/include:/opt/local/include:/opt/include'
lib_path = '/opt/homebrew/lib:/usr/local/lib:/usr/lib:/opt/local/lib:/opt/lib'

append_cflags(%w[-Wno-parentheses -Wno-shorten-64-to-32 -Wno-implicit-function-declaration -Wno-compound-token-split-by-macro])

dir_config("image_science", include_path, lib_path)

have_library('freeimage')

create_makefile("image_science/extension")
