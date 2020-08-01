# latex-build-langja

GitHub Action to compile a Japanese LaTeX documents.

## Inputs

* `root_file`

    The root LaTeX file to be compiled. This input is required.
    ```yaml
    - uses: 3rdJCG/latex-build-langja
      with:
        root_file: main.tex
    ```

* `working_directory`

    The working directory for the LaTeX engine.

* `compiler`

    The LaTeX engine to be invoked. By default, [`latexmk`](https://ctan.org/pkg/latexmk) is used, which automates the process of generating LaTeX documents by issuing the appropriate sequence of commands to be run.

* `args`

    The extra arguments to be passed to the LaTeX engine. By default, it is `-pdf -file-line-error -halt-on-error -interaction=nonstopmode`. This tells `latexmk` to use `pdflatex`. Refer to [`latexmk` document](http://texdoc.net/texmf-dist/doc/support/latexmk/latexmk.pdf) for more information.

* `extra_tex_packages`

    The extra packages to be installed by tlmgr


## Example

```yaml
name: Build LaTeX document
on: [push]
jobs:
  build:
    runs-on: ubuntu-latest
    steps:
    - name: pull from repository
      uses: actions/checkout@master
    - name: Build LaTeX documents
      uses: ./
      with:
        root_file: main.tex
        args: -r .latexmkrc
        extra-tex-package: siunitx here pgfplots csvsimple circuitikz
```

## Forked from 

The initial code is from [xu-cheng/latex-action](https://github.com/xu-cheng/latex-action).


## License

MIT
