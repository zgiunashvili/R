file1 = file.choose()
data1 = haven::read_sav(file1)
icc1 = psychometric::ICC1.lme(MeanScore, data = data1, grp = IDSCHOOL)
summary(icc1)


sch_id = factor(data1$IDSCHOOL)
m = lm(data1$MeanScore~sch_id, weights = data1$TCHWGT)
an = anova(m)
an
