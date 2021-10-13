
{} (:package |dbt)
  :configs $ {} (:init-fn |dbt.main/main!) (:reload-fn |dbt.main/reload!)
    :modules $ []
    :version |0.0.1
  :files $ {}
    |dbt.core $ {}
      :ns $ quote
        ns dbt.core $ :require
          dbt.$meta :refer $ calcit-dirname
          dbt.util :refer $ get-dylib-ext or-current-path
      :defs $ {}
        |dbt:add $ quote
          defn dbt:add (x y)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_add" x y
        |dbt:div $ quote
          defn dbt:div (x y)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_div" x y
        |dbt:mul $ quote
          defn dbt:mul (x y)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_mul" x y
        |dbt:sub $ quote
          defn dbt:sub (x y)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_sub" x y
        |dbt:from-float $ quote
          defn dbt:from-float (x y)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_from_float" x y
        |dbt! $ quote
          defmacro dbt! (x)
            quasiquote $ dbt:parse ~x
        |dbt:to-float $ quote
          defn dbt:to-float (x)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_to_float" x
        |dbt:parse $ quote
          defn dbt:parse (s)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_parse" s
        |lib-path $ quote (def lib-path "\"/dylibs/libcalcit_dbt")
        |dbt:format $ quote
          defn dbt:format (x)
            &call-dylib-edn
              str (or-current-path calcit-dirname) lib-path $ get-dylib-ext
              , "\"dbt_format" x
    |dbt.main $ {}
      :ns $ quote
        ns dbt.main $ :require
          dbt.core :refer $ dbt! dbt:format dbt:add
      :defs $ {}
        |main! $ quote
          defn main! ()
            println $ dbt:format
              w-log $ dbt! "\"&13.23"
            println $ dbt:format
              dbt:add (dbt! "\"&13.23") (dbt! "\"&6.6")
            println $ dbt:format
              dbt:add (dbt! "\"&6") (dbt! "\"&6")
    |dbt.util $ {}
      :ns $ quote (ns dbt.util)
      :defs $ {}
        |get-dylib-ext $ quote
          defmacro get-dylib-ext () $ case-default (&get-os) "\".so" (:macos "\".dylib") (:windows "\".dll")
        |or-current-path $ quote
          defn or-current-path (p)
            if (blank? p) "\"." p
