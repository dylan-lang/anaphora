Reference
*********

.. current-library:: anaphora
.. current-module:: anaphora

.. macro:: aif

   :macrocall:
      .. code-block:: dylan

	 aif(*expression*)
	   body [;]
	 [else body [;] ]
	 end;

   :description:

      Sometimes, in a program, we want to test if an expression
      returns a value or is :drm:`#f`, and if so, to do something with
      the value. If the expression is costly to evaluate, then we must
      do something like this:

      .. code-block:: dylan

	let result = big-long-calculation();
        if (result)
          foo(result)
        end;

      But with :macro:`aif` we could say:

      .. code-block:: dylan

        aif(big-long-calculation())
           foo(it)
        end;

      or

      .. code-block:: dylan

        aif(big-long-calculation())
          foo(it)
        else
          bar()
        end;
