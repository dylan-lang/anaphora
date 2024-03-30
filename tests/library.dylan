Module: dylan-user

define library anaphora-test
  use common-dylan;
  use testworks;
  use anaphora;

  export anaphora-tests;
end library anaphora-test;

define module anaphora-test
  use common-dylan;
  use testworks;
  use anaphora;

  export
    anaphora-test-suite,
    aif-test-suite;
end module anaphora-test;
