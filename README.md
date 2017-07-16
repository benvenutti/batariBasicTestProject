# batariBasicTestProject [![Build Status](https://travis-ci.org/benvenutti/batariBasicTestProject.svg?branch=master)](https://travis-ci.org/benvenutti/batariBasicTestProject) [![Build status](https://ci.appveyor.com/api/projects/status/d6lgvg6si7c2ccsd?svg=true)](https://ci.appveyor.com/project/benvenutti/bataribasictestproject) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

*Enjoy the collaborative environment offered by Github when writing Atari 2600 games*

To guarantee a proper collaborative work environment, **continuous integration and version control is essential**. This project is a small template for [batari basic](http://bataribasic.com/) (bB) code based repositories. The idea is to offer a base project with continuous integration that compiles a small example program written in bB using the bB compiler. The build process is designed to be IDE-agnostic so all major platforms can run it from the command line.

*"Now wait a minute, you said IDE-agnostic... that sounded like there is an actual IDE for batari basic. Is there?"* [Yes, and it is awesome!](http://atariage.com/forums/topic/123849-visual-bb-10-a-new-ide-for-batari-basic/) Unfortunately, it runs solely in Windows, so that is why this project is centered around the tools used by the IDE, not the IDE itself.

### What are the benefits of this project?

- use git version control while writing batari basic code;
- compile your code with the batari basic compiler on three major plataforms (Linux, OSX and Windows) using online services like [Travis CI](https://travis-ci.org/) and [AppVeyor](https://www.appveyor.com/);
- avoid "integration hell" when collaborating with people.

### The build system

The build system relies on two versions of the bB compiler: the original [bB.1.0](http://bataribasic.com/download.html) and the [bB.1.1.reveng](http://7800.8bitdev.org/index.php/Batari_basic). Version 1.0 is for Linux x64 due to the fact that it is bundled with a working x86_64 [dasm](http://dasm-dillon.sourceforge.net/). The following table presents the operating systems and the bB compilers used in continuous integration at [Travis](https://travis-ci.org/benvenutti/batariBasicTestProject) and [AppVeyor](https://ci.appveyor.com/project/benvenutti/bataribasictestproject):

| Operating System        | Operating System             |
|-------------------------|------------------------------|
| Darwin Kernel Version 15.6.0 (OS X 10.11)              | bB.1.1d.reveng |
| Ubuntu 14.04.3 LTS              | bB.1.0 |
| Windows Server 2012 R2 (x64)              | bB.1.1d.reveng |
| Windows Server 2012 R2 (x86)              | bB.1.1d.reveng |

Have fun! :space_invader:

### Branches

**master**: main branch.

**issue-"x"**: used to implement issue "x" during development. Should branch off master and merge back into master.
