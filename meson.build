project ('vnlp', 'vala', 'c' )

dependencies = [
    dependency ('glib-2.0'),
    dependency ('gobject-2.0'),
    meson.get_compiler('vala').find_library('posix'),
    meson.get_compiler('c').find_library('m', required : false)
]

subdir('src')
subdir('test')
