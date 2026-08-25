
{} (:about "|Machine-generated snapshot. Do not edit directly — changes will be overwritten. Use `calcit query` to inspect and `calcit edit`/`calcit tree` to modify. Run `calcit docs agents --full` first. Manual edits must follow format and schema conventions, then run `calcit edit format`.") (:package |dbt)
  :entries $ {}
    :default $ {} (:description |) (:init-fn 'dbt.main/main!) (:mode :native) (:reload-fn 'dbt.main/reload!)
      :feature-policy $ {}
      :modules $ []
      :type-slots $ {}
  :files $ {}
    |dbt.core $ %{} 'FileEntry
      :defs $ {}
        |dbt $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro dbt (x)
              let
                  s $ turn-string x
                  v $ if (starts-with? s |&) s (str |& s)
                quasiquote $ dbt:parse ~v
          :examples $ []
          :schema $ :: 'Macro
            {} $ :args ([])
        |dbt:add $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:add (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_add x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:conjugate $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:conjugate (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_conjugate x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'AnyRef)
              :args $ [] 'AnyRef
        |dbt:div $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:div (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_div x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:equal $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:equal (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_equal x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:f9-add $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-add (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_add x y
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number 'Number
        |dbt:f9-inverse $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-inverse (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_inverse x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number
        |dbt:f9-mul $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-mul (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_mul x y
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number 'Number
        |dbt:f9-norm $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-norm (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_norm x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number
        |dbt:f9-pow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-pow (x exponent)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_pow x exponent
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number 'Number
        |dbt:f9-trace $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:f9-trace (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_f9_trace x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'Number)
              :args $ [] 'Number
        |dbt:format $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:format (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_format x
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:from-digit $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:from-digit (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_from_digit x
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:from-float $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:from-float (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_from_float x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:move-by $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:move-by (x places)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_move_by x places
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'AnyRef)
              :args $ [] 'AnyRef 'Number
        |dbt:mul $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:mul (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_mul x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:norm $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:norm (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_norm x
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'AnyRef)
              :args $ [] 'AnyRef
        |dbt:parse $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:parse (s)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_parse s
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:pow $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:pow (x exponent)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_pow x exponent
          :examples $ []
          :schema $ :: 'Fn
            {} (:return 'AnyRef)
              :args $ [] 'AnyRef 'Number
        |dbt:round $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:round (x ? n)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_round x $ either n 0
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:sub $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:sub (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_sub x y
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:to-buffer $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:to-buffer (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_to_buffer x
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:to-digits $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:to-digits (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_to_digits x
          :examples $ []
          :schema $ :: 'Dynamic
        |dbt:to-float $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn dbt:to-float (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , |dbt_to_float x
          :examples $ []
          :schema $ :: 'Dynamic
        |lib-path $ %{} 'CodeEntry (:doc |)
          :code $ quote (def lib-path |/dylibs/libcalcit_dbt)
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns dbt.core $ :require
            dbt.$meta :refer $ calcit-dirname
            dbt.util :refer $ get-dylib-ext or-current-path
    |dbt.main $ %{} 'FileEntry
      :defs $ {}
        |assert-dbt= $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro assert-dbt= (a b)
              quasiquote $ &let ()
                println $ ~
                  str-spaced |comparing (format-to-lisp a) |to $ format-to-lisp b
                if
                  not $ dbt:equal ~a ~b
                  raise $ ~
                    str-spaced |failed (format-to-lisp a) "|to match" $ format-to-lisp b
          :examples $ []
          :schema $ :: 'Macro
            {} $ :args ([])
        |main! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn main! ()
              println $ dbt:format
                w-log $ dbt 13.23
              println $ dbt:format
                dbt:add (dbt 13.23) (dbt 6.6)
              println $ dbt:format
                dbt:add (dbt 6) (dbt 6)
              println $ dbt:format
                dbt:round $ dbt 13.23
              println $ dbt:to-digits (dbt 13.23)
              assert= (dbt 1) (dbt:from-digit 1)
              assert= (dbt 8) (dbt:from-digit 8)
              run-tests
          :examples $ []
          :schema $ :: 'Dynamic
        |reload! $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn reload! () $ println "|Reloaded dbt"
          :examples $ []
          :schema $ :: 'Dynamic
        |run-tests $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn run-tests () (println "|run tests")
              assert= (dbt 1) (dbt 1)
              assert= (dbt 1.3) (dbt 1.3)
              assert=
                dbt:add (dbt 1) (dbt 1)
                dbt 19
              assert=
                dbt:add
                  dbt:add (dbt 1) (dbt 1)
                  dbt 1
                dbt 15
              assert=
                -> (dbt 1)
                  dbt:add $ dbt 1
                  dbt:add $ dbt 1
                  dbt:add $ dbt 1
                dbt 11
              assert=
                dbt:sub (dbt 44) (dbt 6)
                dbt 466
              assert=
                dbt:to-float $ dbt 33
                [] 4 0
              assert=
                dbt:to-float $ dbt 66
                [] -4 4
              assert= (dbt:from-float 4 4) (dbt 88)
              assert=
                dbt:round (dbt 3.333) 2
                dbt 3.33
              assert=
                dbt:div (dbt 11) (dbt 19)
                dbt 19
              assert=
                dbt:mul (dbt 19) (dbt 19)
                dbt 11
              assert=
                dbt:format $ dbt.core/dbt:parse
                  dbt.core/dbt:to-buffer $ dbt 88
                , |&88
              assert=
                dbt.core/dbt:format $ dbt.core/dbt:conjugate (dbt 8)
                , |&6
              assert=
                dbt.core/dbt:format $ dbt.core/dbt:norm (dbt 8)
                , |&19
              assert=
                dbt.core/dbt:format $ dbt.core/dbt:pow (dbt 8) 4
                , |&99
              assert=
                dbt.core/dbt:format $ dbt.core/dbt:move-by (dbt 1.2) 2
                , |&125
              assert= (dbt.core/dbt:f9-mul 8 8) 7
              assert= (dbt.core/dbt:f9-pow 8 8) 1
              assert=
                dbt.core/dbt:f9-mul 8 $ dbt.core/dbt:f9-inverse 8
                , 1
              assert= (dbt.core/dbt:f9-trace 8) 9
              assert= (dbt.core/dbt:f9-norm 8) 9
              println "|Passed test."
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote
          ns dbt.main $ :require
            dbt.core :refer $ dbt dbt:format dbt:add dbt:sub dbt:div dbt:mul dbt:round dbt:to-float dbt:from-float dbt:to-digits dbt:from-digit dbt:equal
    |dbt.util $ %{} 'FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) |.so (:macos |.dylib) (:windows |.dll)
          :examples $ []
          :schema $ :: 'Macro
            {} $ :args ([])
        |or-current-path $ %{} 'CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) |. p
          :examples $ []
          :schema $ :: 'Dynamic
      :ns $ %{} 'NsEntry (:doc |)
        :code $ quote (ns dbt.util)
