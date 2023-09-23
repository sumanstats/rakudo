# Rakudo compiler for The Raku Programming Language

> Docker images for **Raku**

[![Raku](https://img.shields.io/badge/Raku-v6.d-blue.svg)](https://raku.org/)
[![Build status](https://ci.appveyor.com/api/projects/status/jcu7g8cqao9mn3wj?svg=true)](https://ci.appveyor.com/project/sumanstats/rakudo)
[![Last Commit](https://img.shields.io/github/last-commit/sumanstats/rakudo)](https://github.com/sumanstats/rakudo)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) 

<a href="https://raku.org/"><img src="https://i.imgur.com/Tkss808.png" width="190" height="120" align="right"></a>

Builds Rakudo images in dockerhub: [offical releases of Rakudo](https://github.com/rakudo/rakudo/releases) (stable version) and [Rakudo:latest](https://hub.docker.com/r/sumankhanal/rakudo) (unstable version) directly from github.


 
 **Docker images available with their tags**

  | <!-- -->                                                                | <!-- -->                                                                    | <!-- -->                                                                    | <!-- -->                                                                    |
  | ----------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- | --------------------------------------------------------------------------- |
  | ![Rakudo-2019.11](https://img.shields.io/badge/Rakudo-2019.11-blue.svg) | ![Rakudo-2020.01](https://img.shields.io/badge/Rakudo-2020.01-blue.svg)     | ![Rakudo-2020.02.1](https://img.shields.io/badge/Rakudo-2020.02.1-blue.svg) | ![Rakudo-2020.05.1](https://img.shields.io/badge/Rakudo-2020.05.1-blue.svg) |
  | ![Rakudo-2020.06](https://img.shields.io/badge/Rakudo-2020.06-blue.svg) | ![Rakudo-2020.07](https://img.shields.io/badge/Rakudo-2020.07-blue.svg)     | ![Rakudo-2020.08.2](https://img.shields.io/badge/Rakudo-2020.08.2-blue.svg) | ![Rakudo-2020.09](https://img.shields.io/badge/Rakudo-2020.09-blue.svg)     |
  | ![Rakudo-2020.12](https://img.shields.io/badge/Rakudo-2020.12-blue.svg) | ![Rakudo-2021.02.1](https://img.shields.io/badge/Rakudo-2021.02.1-blue.svg) | ![Rakudo-2021.05](https://img.shields.io/badge/Rakudo-2021.05-blue.svg)     | ![Rakudo-2021.06](https://img.shields.io/badge/Rakudo-2021.06-blue.svg)     |
  | ![Rakudo-2021.09](https://img.shields.io/badge/Rakudo-2021.09-blue.svg) | ![Rakudo-2021.12](https://img.shields.io/badge/Rakudo-2021.12-blue.svg) |    ![Rakudo-2022.07](https://img.shields.io/badge/Rakudo-2022.07-blue.svg)      | ![Rakudo-2022.12](https://img.shields.io/badge/Rakudo-2022.12-blue.svg)     |


----

| Latest images                                                                                                          | Description                                 | Image size                                                               |
| ---------------------------------------------------------------------------------------------------------------------- | ------------------------------------------- | ------------------------------------------------------------------------ |
| [![Rakudo-2023.09](https://img.shields.io/badge/Rakudo-2023.09-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo) | Rakudo image from official release v2023.09 | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2023.09) |
| [![Rakudo-latest](https://img.shields.io/badge/Rakudo-latest-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)   | Rakudo image directly from github           | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/latest)  |




All the images contain Rakudo compiler along with module manager `zef`, Raku module writing tool [App::Mi6](https://github.com/skaji/mi6) and testing framework `App::Prove6`. These images thus can be used for testing Raku modules in Travis-CI or Appveyor or GitHub actions or anywhere container technology is supported. It also includes [Pandoc](https://pandoc.org/index.html) for reproducible research.


**`Rakudo:latest`** is the bleeding edge version built directly from GitHub commits and is always recent than the released stable versions.


To run an image interactively, the command is:

`docker run -it sumankhanal/rakudo:2023.09 bash`

To build a Raku module like  `Sum::Doc` type the following commands in the terminal of container of this image:

  ```raku
  mi6 new Sum::Doc
  ```
  
It will build the module with following folders and files within it:

  - bin/
  - lib/
  - t/
  - META6.json
  - LICENSE
  - README.md
  - dist.ini
  
For **Raku** language questions and answers, go to: [![StackOverflow](https://img.shields.io/badge/stackoverflow-raku-orange.svg)](https://stackoverflow.com/questions/tagged/raku).


If you run into any issues, file it [here](https://github.com/sumanstats/rakudo/issues).

*** 

Side note:

>To get the `sha256sum` of the executable in a `.txt` file in `powershell`, execute the command:

>```
>Get-FileHash "executable" | Select -ExpandProperty Hash | Out-File -Encoding utf8 "txtfile" 
>```
 
 **OR**
 
>```
>(Get-FileHash "executable").Hash | Out-File -Encoding utf8 "txtfile"
>```
