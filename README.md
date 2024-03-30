# Anaphora

[![build-and-test](https://github.com/dylan-lang/anaphora/actions/workflows/build-and-test.yml/badge.svg)](https://github.com/dylan-lang/anaphora/actions/workflows/build-and-test.yml)

Anaphoric constructs for Dylan

## `aif`

Sometimes, in a program, we want to test if an expression returns a
value or is `#f`, and if so, to do something with the value. If the
expression is costly to evaluate, then we must do something like this:

```dylan
let result = big-long-calculation();
if (result)
  foo(result)
end;
```

But with `aif` we could say:

```dylan
aif(big-long-calculation())
  foo(it)
end;
```

or

```dylan
aif(big-long-calculation())
  foo(it)
else
  bar()
end;
```

### References

On Lisp (ch 14), by Paul Graham, for original Lisp implementation
