# Libical

[![Build Status](https://travis-ci.org/jgoldfar/Libical.jl.svg?branch=master)](https://travis-ci.org/jgoldfar/Libical.jl)
[![Coverage Status](https://coveralls.io/repos/jgoldfar/Libical.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/jgoldfar/Libical.jl?branch=master)
[![codecov.io](http://codecov.io/github/jgoldfar/Libical.jl/coverage.svg?branch=master)](http://codecov.io/github/jgoldfar/Libical.jl?branch=master)

Julia wrapper for [Libical](https://github.com/libical/libical). Work in Progress.

## Development Notes

* Most test data is extracted from `libical`'s source tree and packaged on Bintray; the easiest way to update this test data is to clone the `libical` repository to `deps/src` and run `make-libical-test-data.sh`.
The API key there is not valid, so you'll need to create a new one.