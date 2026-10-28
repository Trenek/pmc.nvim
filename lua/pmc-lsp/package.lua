return {
    name = 'pmc-lsp',
    description = 'Hover for PMC assembly: what each instruction computes.',
    homepage = 'https://github.com/Trenek/pmc-lsp',
    licenses = { 'MIT' },
    languages = { 'PMC' },
    categories = { 'LSP' },
    source = {
        id = 'pkg:github/Trenek/pmc-lsp',
        build = {
            run = [[
cmake -S . -B build -DCMAKE_BUILD_TYPE=Release
cmake --build build --parallel
]],
        },
    },
    bin = { ['pmc-lsp'] = 'build/pmc-lsp' },
}
