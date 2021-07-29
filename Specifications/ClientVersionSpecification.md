# Client Version Specification

A client's version is used to specify what's the version of the client's build.


## Specification

Version numbers follows the `Semantic Versioning 2.0.0` standard or `PEP 440` standard, see the resources below.

## Examples

```
1.0.0-alpha
1.0.0-alpha.1
1.0.0-alpha.beta
1.0.0-beta
1.0.0-beta.2
1.0.0-beta.11
1.0.0-rc.1
1.0.0.
1.0.0.0
1.0.0
1.0
1.0.dev456
1.0a1
1.0a2.dev456
1.0a12.dev456
1.0a12
1.0b1.dev456
1.0b2
1.0b2.post345.dev456
1.0b2.post345
1.0rc1.dev456
1.0rc1
1.0
1.0+abc.5
1.0+abc.7
1.0+5
1.0.post456.dev34
1.0.post456
1.1.dev1
```

## Regex patterns

```
# From https://semver.org/

^(?P<major>0|[1-9]\d*)\.(?P<minor>0|[1-9]\d*)\.(?P<patch>0|[1-9]\d*)(?:-(?P<prerelease>(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+(?P<buildmetadata>[0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$
```

```
# From https://semver.org/

^(0|[1-9]\d*)\.(0|[1-9]\d*)\.(0|[1-9]\d*)(?:-((?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*)(?:\.(?:0|[1-9]\d*|\d*[a-zA-Z-][0-9a-zA-Z-]*))*))?(?:\+([0-9a-zA-Z-]+(?:\.[0-9a-zA-Z-]+)*))?$
```

```
# By https://github.com/the-blank-x

^(?:\d+\.\d+(?:\.\d+(?:\.\d+)?)?|\d+\.\d+(?:(?:[a-z]|rc)\d+)?(?:\.[a-z]+\d+)*|\d+\.\d+\+(?:[a-z]+\.)?\d+)$
```

## Resources

 - https://semver.org/
 - https://www.python.org/dev/peps/pep-0440/