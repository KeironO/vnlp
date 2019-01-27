conf_data = configuration_data()

lib_sources = files(
    'Tokeniser.vala',
    'Ngram.vala'
)

libvnlp = shared_library(
    'vnlp',
    lib_sources,
    dependencies: dependencies,
    c_args: [ '-g' ],
    link_args: ['-lm'],
)

pkg.generate(
  libraries: libvnlp,
  version: meson.project_version(),
  name: meson.project_name(),
  description: 'Open soure Natural Language Toolkit library written in Vala',
  requires: [
    'glib-2.0',
    'gobject-2.0',
  ],
)

lib_dep = declare_dependency(
    sources: lib_sources
)
