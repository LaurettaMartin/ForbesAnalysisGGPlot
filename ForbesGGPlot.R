
library(ggplot2)


ggplot(X2022_forbes_billionaires) + geom_point(aes(x=age, y=networth, color=country)

ggplot(X2022_forbes_billionaires) + 
  geom_point(aes(x=age, y=networth, color=country))

labeledPlot <- ggplot(X2022_forbes_billionaires, aes(x=age, y=networth, color=country)) + 
  geom_point() + labs (title="Forbes 2022 Scatterplot", x="Networth", y="Age")
print(labeledPlot)

themedPlot <- labeledPlot + theme(plot.title=element_text(size=20, face="bold"), 
                                  axis.text.x=element_text(size=8), 
                                  axis.text.y=element_text(size=8),
                                  axis.title.x=element_text(size=16),
                                  axis.title.y=element_text(size=16)) + 
  scale_color_discrete(name="Residing Country")
print(themedPlot)

labeledPlot + facet_wrap(~ country, ncol=5)

