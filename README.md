# Rakudo interpreter for The Raku Programming Language

> Docker images for **Raku**

[![Raku](https://img.shields.io/badge/Raku-v6.d-blue.svg)](https://raku.org/)
[![Build Status](https://travis-ci.com/sumanstats/Rakudo.svg?branch=master)](https://travis-ci.com/sumanstats/rakudo)
[![Last Commit](https://img.shields.io/github/last-commit/sumanstats/rakudo)](https://github.com/sumanstats/rakudo)


<a href="https://raku.org/"><img src="https://i.imgur.com/Tkss808.png" width="190" height="120" align="right"></a>

Builds Rakudo images in dockerhub: [offical releases of Rakudo](https://hub.docker.com/r/sumankhanal/rakudo) (stable version) and [Rakudo:daily](https://hub.docker.com/r/sumankhanal/rakudo) (unstable version) directly from github.


| Docker Image Name with tags                                                                                                | Description                                   | Image Size                                                                 | License                                                                                                     |
|----------------------------------------------------------------------------------------------------------------------------|-----------------------------------------------|----------------------------------------------------------------------------|-------------------------------------------------------------------------------------------------------------|
| [![Rakudo-daily](https://img.shields.io/badge/Rakudo-daily-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)         | Rakudo image directly from github             | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/daily)     | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2019.11](https://img.shields.io/badge/Rakudo-2019.11-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)     | Rakudo image from official release v2019.11   | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2019.11)   | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.01](https://img.shields.io/badge/Rakudo-2020.01-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)     | Rakudo image from official release v2020.01   | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.01)   | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.02.1](https://img.shields.io/badge/Rakudo-2020.02.1-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo) | Rakudo image from official release v2020.02.1 | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.02.1) | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.05.1](https://img.shields.io/badge/Rakudo-2020.05.1-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo) | Rakudo image from official release v2020.05.1 | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.05.1) | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.06](https://img.shields.io/badge/Rakudo-2020.06-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)     | Rakudo image from official release v2020.06   | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.06)   | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.07](https://img.shields.io/badge/Rakudo-2020.07-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo)     | Rakudo image from official release v2020.07   | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.07)   | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
| [![Rakudo-2020.08.1](https://img.shields.io/badge/Rakudo-2020.08.1-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo) | Rakudo image from official release v2020.08.1 | ![](https://img.shields.io/docker/image-size/sumankhanal/rakudo/2020.08.1) | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |


All the images contain Rakudo interpreter along with module manager `zef`, Raku module writing tool [App::Mi6](https://github.com/skaji/mi6) and testing framework `App::Prove6`. These images thus can be used for testing Raku modules in Travis-CI or Appveyor or GitHub actions or Windows or anywhere container technology is supported.

It also includes [Pandoc](https://pandoc.org/index.html) for reproducible research.


To run an image interactively, the command is:

`docker run -it sumankhanal/rakudo:2020.07 bash`

To build a Raku module like  `Sum::Doc ` type the following commands in the terminal of container of this image:

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
