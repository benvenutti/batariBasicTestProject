# batariBasicTestProject [![Build Status](https://travis-ci.org/benvenutti/batariBasicTestProject.svg?branch=master)](https://travis-ci.org/benvenutti/batariBasicTestProject) [![Build status](https://ci.appveyor.com/api/projects/status/d6lgvg6si7c2ccsd?svg=true)](https://ci.appveyor.com/project/benvenutti/bataribasictestproject) [![License: GPL v3](https://img.shields.io/badge/License-GPL%20v3-blue.svg)](http://www.gnu.org/licenses/gpl-3.0)

*Writing Atari 2600 games/programs using tools from the 21st Century!*

This project is a small template for [batari basic](http://bataribasic.com/) (bB) code based repositories. The idea is to offer a base project with continuous integration that compiles a small example program written in bB using the bB compiler. The build process is designed to be IDE-agnostic so all major platforms can run it from the command line.

"Now wait a minute, you said IDE-agnostic... that sounded like there is an IDE for batari basic. Is there?" [Yes, and it is beautiful!](http://atariage.com/forums/topic/123849-visual-bb-10-a-new-ide-for-batari-basic/) Unfortunately, it runs solely in Windows, so that is why this project is centered around the tools used by the IDE, not the IDE itself.

### What are the benefits of this project?

- use git version control while writing batari basic code;
- compile your code with the batari basic compiler on three major plataforms (Linux, OSX and Windows) using online services like [Travis CI](https://travis-ci.org/) and [AppVeyor](https://www.appveyor.com/);
- enjoy the collaborative environment offered by Github.

### Branches

**master**: main branch.

**issue-"x"**: used to implement issue "x" during development. Should branch off master and merge back into master.