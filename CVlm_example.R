# Beispieldaten entlehnt von http://www.ats.ucla.edu/stat/r/dae/rreg.htm
# crime: Gewaltdelikte pro 100'000 Personen
# pctwhite: Prozent an Personen mit einer Hochschulausbildung
# single: Prozent alleinerziehender Personen

require(foreign)
require(MASS)
require(DAAG)
cdata <- read.dta("http://www.ats.ucla.edu/stat/data/crime.dta")
summary(cdata)
summary(lm(crime ~ pctwhite + single, data = cdata))
CVlm(cdata,form.lm = formula(crime ~ pctwhite + single), m=3, plotit="Residual")