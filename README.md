# babette_example_8

Branch   |[![Travis CI logo](pics/TravisCI.png)](https://travis-ci.org)                                                                                           |[![AppVeyor logo](pics/AppVeyor.png)](https://appveyor.com)                                                                                               
---------|--------------------------------------------------------------------------------------------------------------------------------------------------------|--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
`master` |[![Build Status](https://travis-ci.org/richelbilderbeek/babette_example_8.svg?branch=master)](https://travis-ci.org/richelbilderbeek/babette_example_8) |[![Build status](https://ci.appveyor.com/api/projects/status/dc5nhj1r7f4urpji/branch/master?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/babette-example-8/branch/master)
`develop`|[![Build Status](https://travis-ci.org/richelbilderbeek/babette_example_8.svg?branch=develop)](https://travis-ci.org/richelbilderbeek/babette_example_8)|[![Build status](https://ci.appveyor.com/api/projects/status/dc5nhj1r7f4urpji/branch/develop?svg=true)](https://ci.appveyor.com/project/richelbilderbeek/babette-example-8/branch/develop)

A [babette example](https://github.com/richelbilderbeek/babette_examples).

## Example #8: Strict clock with a known clock rate

![Example #8: Strict clock with a known clock rate](pics/strict_clock_rate_0_5_2_4.png)

```{r}
posterior <- bbt_run(
  "my_alignment.fas",
  clock_model = create_strict_clock_model(
    clock_rate_param = create_clock_rate_param(value = 0.5)
  ) 
)
```

Thanks to Paul van Els and Yacine Ben Chehida for this use case.

All other parameters are set to their defaults, as in BEAUti.

## Result

![](result.png)
