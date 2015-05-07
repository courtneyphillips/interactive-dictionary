#Word Frequency

---

#### Links

  - Heroku: https://whispering-springs-8808.herokuapp.com/
  - GitHub: https://github.com/courtneyphillips/interactive-dictionary

## Synopsis

Interactive Dictionary is a simple Ruby application built by [Courtney Phillips](https://github.com/courtneymaepdx) with the ability to collect user-input words, and correlate them with their user-given definitions.

## Motivation

Interactive Dictionary aims to reduce the burden, frustration and literacy required to _manually_ remember what words mean. Especially all those _oh-so-clever_ ones you keep making up.  

## Code Example

The magic behind the Interactive Dictionary is a set of custom classes and methods `String#word_frequency` method that acts upon a phrase, including the word you wish to count as the argument.

  ``"Wow, I'm so, so glad I don't have to read this sentence myself".word_frequency("so")``

## Contribute

  - Issue Tracker: https://github.com/courtneymaepdx/interactive-dictionary/issues
  - Source Code: https://github.com/courtneymaepdx/interactive-dictionary
  - Pull Requests: https://github.com/courtneymaepdx/interactive-dictionary/pulls

## Installation

Interactive Dictionary uses the following gems:

  - Capybara
  - Sinatra
  - Sinatra-Contrib
  - RSpec
  - Pry

To install, run `gem install bundle` in the command line.

## Tests

Both method and integration tests for Interactive Dictionary utilize the RSpec. Simply run `gem install rspec`, if it's not already installed, and then the command `rspec`, while located in the project's file.

## Contact

Questions, concerns, fan-mail, or other grievances can be directed to Courtney at <courtney.mae.phillips@gmail.com>.

## License

The MIT License (MIT)

Copyright (c) 2015 Courtney Phillips

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

---
