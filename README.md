# latex-build-langja [![GitHub Actions Status](https://github.com/3rdJCG/latex-build-langja/workflows/Build%20test/badge.svg)](https://github.com/3rdJCG/latex-build-langja/actions)

GitHub Action to compile a Japanese LaTeX documents.
Includes the [Noto font](https://www.google.com/get/noto/).

And include [plistings](https://github.com/h-kitagawa/plistings) for listings in Japanese environment.

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

    The extra arguments to be passed to the LaTeX engine.

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
      uses: 3rdJCG/latex-build-langja
      with:
        root_file: main.tex
        args: -r .latexmkrc
        extra-tex-package: siunitx here pgfplots csvsimple circuitikz
```

## Docker image
This action uses this Docker image [3rdjcg/latex-ci-notojp](https://hub.docker.com/repository/docker/3rdjcg/latex-ci-notojp)


## Forked from 

The initial code is from [xu-cheng/latex-action](https://github.com/xu-cheng/latex-action).


## License

MIT
