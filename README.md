## Calcit DBT

> Calcit binding for Dual Balanced Ternary calculator.

### Usage

functions under `dbt.core`:

```cirru
dbt 1.2

dbt:format (dbt 1.2)

dbt:round (dbt 1.2)
dbt:round (dbt 1.2) 1

dbt:add (dbt 1.2) (dbt 3.4)
dbt:sub (dbt 1.2) (dbt 3.4)
dbt:mul (dbt 1.2) (dbt 3.4)
dbt:div (dbt 1.2) (dbt 3.4)

dbt:to-digits $ dbt 12.34

; create dbt from a single digit
dbt:from-digit 2

dbt:equal a b
```

internally it's using `Edn::AnyRef` so need to compare with a specific function.

### License

MIT
