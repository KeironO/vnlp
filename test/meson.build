
test_name = meson.project_name() + '-test'

test_sources = files([
    'TestTokeniser.vala'
])

tests = executable(
    test_name,
    test_sources,
    meson.source_root() + '/lib/Tokeniser.vala',
    dependencies: dependencies,
    c_args: [ '-g' ],
    link_args: ['-lm'],
    install: false
)

test('Tests', tests)
