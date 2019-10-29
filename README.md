# Rakudo interpreter for raku programming language

[![raku](https://img.shields.io/badge/raku-v6.d-blue.svg)](https://raku.org/)



Build two images in dockerhub: [offical release of rakudo](https://hub.docker.com/r/sumankhanal/rakudo:latest) and [rakudo daily](https://hub.docker.com/r/sumankhanal/rakudo:daily) directly from github.

| Docker Image Name | Description |  License |
|-------------------|--------------|----------|
|[![rakudo-daily](https://img.shields.io/badge/rakudo-daily-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo:daily) | Builds rakudo image directly from github daily | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |
|[![rakudo-latest](https://img.shields.io/badge/rakudo-latest-blue.svg)](https://hub.docker.com/r/sumankhanal/rakudo:latest) | Builds rakudo image from official release from rakudo team | [![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT) |



Both the images contain Rakudo interpreter along with module manager `zef`, raku module writing tool [App::Mi6](https://github.com/skaji/mi6) and testing framework `App::Prove6`. These images thus can be used for testing raku modules in Travis-CI or Appveyor.

It also includes [Pandoc](https://pandoc.org/index.html) for reproducible research.


To build a raku module like  `Sum::Doc ` type the following commands in the terminal of container of this image:

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
  
**Happy** building **raku modules** !!


Side note:

To get the sha256sum of the executable in a `.txt` file in `powershell`, execute the command:

 ```
 Get-FileHash "executable" | Select -ExpandProperty Hash | Out-File -Encoding utf8 "txtfile" 
 ```
 
 **OR**
 
 ```
(Get-FileHash "executable").Hash | Out-File -Encoding utf8 "txtfile"
 ```
