
test_name = meson.project_name() + '-test'

test_sources = files([
    'Tests.vala',

])

tests_deps = [
    dependencies,
    lib_dep
]
tests = executable(
    test_name,
    test_sources,
    dependencies: tests_deps,
    c_args: [ '-g' ],
    link_args: ['-lm'],
    install: false
)

test('Tests', tests)
