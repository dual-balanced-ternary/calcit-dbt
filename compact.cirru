
{} (:package |dbt)
  :configs $ {} (:init-fn |dbt.main/main!) (:reload-fn |dbt.main/reload!) (:version |0.0.4)
    :modules $ []
  :entries $ {}
  :files $ {}
    |dbt.core $ %{} :FileEntry
      :defs $ {}
        |dbt $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro dbt (x)
              let
                  s $ turn-string x
                  v $ if (starts-with? s "\"&") s (str "\"&" s)
                quasiquote $ dbt:parse ~v
        |dbt:add $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:add (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_add" x y
        |dbt:div $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:div (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_div" x y
        |dbt:format $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:format (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_format" x
        |dbt:from-digit $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:from-digit (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_from_digit" x
        |dbt:from-float $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:from-float (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_from_float" x y
        |dbt:mul $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:mul (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_mul" x y
        |dbt:parse $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:parse (s)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_parse" s
        |dbt:round $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:round (x ? n)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_round" x $ either n 0
        |dbt:sub $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:sub (x y)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_sub" x y
        |dbt:to-digits $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:to-digits (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_to_digits" x
        |dbt:to-float $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn dbt:to-float (x)
              &call-dylib-edn
                str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
                , "\"dbt_to_float" x
        |lib-path $ %{} :CodeEntry (:doc |)
          :code $ quote (def lib-path "\"/dylibs/libcalcit_dbt")
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns dbt.core $ :require
            dbt.$meta :refer $ calcit-dirname
            dbt.util :refer $ get-dylib-ext or-current-path
    |dbt.main $ %{} :FileEntry
      :defs $ {}
        |main! $ %{} :CodeEntry (:doc |)
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
        |run-tests $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn run-tests ()
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
                dbt:round $ dbt 3.333
                dbt 3
              assert=
                dbt:round (dbt 3.333) 0
                dbt 3
              assert=
                dbt:round (dbt 3.333) 1
                dbt 3.3
              assert=
                dbt:round (dbt 3.333) 2
                dbt 3.33
              assert=
                dbt:div (dbt 11) (dbt 19)
                dbt 19
              assert=
                dbt:mul (dbt 19) (dbt 19)
                dbt 11
              println "\"Passed test."
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote
          ns dbt.main $ :require
            dbt.core :refer $ dbt dbt:format dbt:add dbt:sub dbt:div dbt:mul dbt:round dbt:to-float dbt:from-float dbt:to-digits dbt:from-digit
    |dbt.util $ %{} :FileEntry
      :defs $ {}
        |get-dylib-ext $ %{} :CodeEntry (:doc |)
          :code $ quote
            defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |or-current-path $ %{} :CodeEntry (:doc |)
          :code $ quote
            defn or-current-path (p)
              if (blank? p) "\"." p
      :ns $ %{} :CodeEntry (:doc |)
        :code $ quote (ns dbt.util)
