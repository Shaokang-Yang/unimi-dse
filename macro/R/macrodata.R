gdp<-function(symbol){
  saving <- WDI::WDI(country=symbol,
                indicator="NY.GNS.ICTR.ZS",
                start=1990, end=2018)
  gdp <- WDI::WDI(country=symbol,
                  indicator="NY.GDP.MKTP.CD",
                  start=1990, end=2018)
  macro<-data.frame(
    Gdp=gdp,
    Saving=saving
  )
  print(macro)
}

