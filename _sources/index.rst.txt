Anaphora
========

.. toctree::
   :hidden:
   :maxdepth: 2

This library provides anaphoric macros for Dylan, but what's an anaphoric macro?

From `Wikipedia <https://en.wikipedia.org/w/index.php?title=Anaphoric_macro>`_:

An anaphoric macro is a type of programming macro that deliberately
captures some form supplied to the macro which may be referred to by
an anaphor (an expression referring to another). Anaphoric macros
first appeared in Paul Graham's `On Lisp
<https://web.archive.org/web/20120426001111/http://dunsmor.com/lisp/onlisp/onlisp_18.html>`_
and their name is a reference to linguistic anaphora — the use of
words as a substitute for preceding words.

Anaphoric Macros
----------------

This library currently implements one macro, :macro:`aif`:

.. current-library:: anaphora
.. current-module:: anaphora

.. macro:: aif

   :macrocall:
      .. parsed-literal:: 
         aif (*expression*)
           *body*
         [*else* *else-body*]
         end;

   :description:

      A common Dylan idiom is to make functions return :drm:`#f` to indicate "no value"
      and any other value indicates success.  Correspondingly, it is common to see code
      like the following:

      .. code:: dylan

        let result = false-or-something-else();
        if (result)
          foo(result)
        end;

      The :macro:`aif` macro automatically binds the variable ``it`` to the return value
      so that you can instead write:

      .. code:: dylan

        aif (false-or-something-else())
          foo(it)
        end;

      or

      .. code:: dylan

        aif (false-or-something-else())
          foo(it)
        else
          bar()
        end;

Indices and tables
------------------

* :ref:`genindex`
* :ref:`search`
