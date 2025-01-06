Module: anaphora-test
Synopsis: Tests for anaphora library
Author: Fernando Raya
Copyright: (c) 2024

define function big-calculation
    (#key should-work? :: <boolean> = #t) => (calculation :: false-or(<integer>))
  if (should-work?) 42 else #f end;
end;

define function on-success
    (calculation :: <integer>) => (message :: <string>)
  integer-to-string(calculation)
end;

define function on-fail
    (calculation :: false-or(<integer>)) => (message :: <string>)
  if (calculation) "Say what?" else "Failed!" end
end;

define test test-aif-on-success-if ()
  let result = aif(big-calculation()) on-success(it) end;
  expect-equal("42", result);
end test;

define test test-aif-on-success-if-else ()
  let result = aif(big-calculation())
                 on-success(it)
               else
                 on-fail(it)
               end;
  expect-equal("42", result)
end test;

define test test-aif-on-failure-if ()
  let result = aif(big-calculation(should-work?: #f)) on-success(it) end;
  expect-false(result)
end test;

define test test-aif-on-failure-if-else ()
  let result = aif(big-calculation(should-work?: #f))
                 on-success(it)
               else
                 on-fail(it)
               end;
  expect-equal("Failed!", result)
end test;

run-test-application();
