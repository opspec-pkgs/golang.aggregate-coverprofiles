# problem statement
aggregates coverprofiles from a multi-package golang project

# example usage

> note: in examples, VERSION represents a version of the golang.aggregate-coverprofiles pkg

## install

```shell
opctl pkg install github.com/opspec-pkgs/golang.aggregate-coverprofiles#VERSION
```

## run

```
opctl run github.com/opspec-pkgs/golang.aggregate-coverprofiles#VERSION
```

## compose

```yaml
op:
  pkg: { ref: github.com/opspec-pkgs/golang.aggregate-coverprofiles#VERSION }
  inputs: 
    src:
  outputs:
    coverprofile:
```
