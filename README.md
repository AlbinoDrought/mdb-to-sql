# mdb-to-sql

Wraps a modified version of [this gist](https://gist.github.com/turicas/2592877) in a container.

## Usage

```sh
docker build -t albinodrought/mdb-to-sql .
docker run --rm -it -v $PWD:/data albinodrought/mdb-to-sql your.mdb output.sql postgres
```
