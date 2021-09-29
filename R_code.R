# Simple linear regression with all the varioables and UNIT as Y variable
1)
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(UNITS~., data = df)
summary(mod)

# Basically with covid, unit sales went up, and the coefficent is significant as well

the code to make the graph to show it

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS


boxplot(UNITS~COVID,
        data=df,
        main="UNIT sold before and after COVID",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)



# As expected price has strong negative effect in the UNIT sales, and the coefficient is significant as well

code:
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
#attach(df)
plot(UNITS ~ PRICE, data=df)
abline(lm(UNITS ~ PRICE, data=df), col="red" ,
       xlab="PRICE", ylab="UNIT SALES",
       main="Scatter Plot")



4) interactive effect of COVID and REGION for UNIT

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,FLAVOR.SCENT) )
names(df)
df$REGION<-factor(df$REGION)
names(df)
mod <- lm(UNITS~.+REGION*COVID, data = df)
summary(mod)


# Basically with covid, region 2 experienced less UNIT sales
Graph code:
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS

df<-filter(df, REGION=='2')

boxplot(UNITS~COVID,
        data=df,
        main="UNIT sold before and after COVID in REGION 2",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)







6) interactive effect of COVID and PARENT for UNIT

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,FLAVOR.SCENT) )
names(df)
df$REGION<-factor(df$REGION)
names(df)
mod <- lm(UNITS~.+PARENT*COVID, data = df)
summary(mod)


# Basically with covid, parent 2,3,5,7 experienced less UNIT sales. The coefficient is significant as well

PARENT 2: code
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

dff<-filter(df, PARENT=='PARENT 2')

boxplot(UNITS~COVID,
        data=dff,
        main="UNIT sold before and after COVID in PARENT 2",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)

PARENT 3: code
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

dff<-filter(df, PARENT=='PARENT 3')

boxplot(UNITS~COVID,
        data=dff,
        main="UNIT sold before and after COVID in PARENT 3",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)


PARENT 5:
  
  
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

dff<-filter(df, PARENT=='PARENT 5')

boxplot(UNITS~COVID,
        data=dff,
        main="UNIT sold before and after COVID in PARENT 5",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)


PARENT 7

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

dff<-filter(df, PARENT=='PARENT 7')

boxplot(UNITS~COVID,
        data=dff,
        main="UNIT sold before and after COVID in PARENT 7",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)










8) interactive effect of COVID and Product Type for UNIT

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,FLAVOR.SCENT) )
names(df)
df$REGION<-factor(df$REGION)
names(df)
mod <- lm(UNITS~.+PRODUCT.TYPE*COVID, data = df)
summary(mod)


# Basically with covid, PRODUCT.TYPE ZUCCHINI experienced less UNIT sales. The coefficent is significant as well

Graph to show it:
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PRODUCT.TYPE)

dff<-filter(df, PRODUCT.TYPE=='ZUCCHINI')

boxplot(UNITS~COVID,
        data=dff,
        main="UNIT sold before and after COVID for PRODUCT.TYPE= ZUCCHINI",
        xlab="COVID",
        ylab="UNITS",
        col="orange",
        border="brown"
)



Y= PRICE



1) Simple linear regression with all the variables except UNIT and PRICE as Y variable


df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(PRICE~., data = df)
summary(mod)

With COVID, the price went up
the coefficient is significant as well

code for it:
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PRODUCT.TYPE)
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all product before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)



2) 
# Simple linear regression with all the variables except UNIT and PRICE as Y variable with interactive term 
COVID and REGION

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(PRICE~.+COVID*REGION, data = df)
summary(mod)

For Region 4, Prices seems to go down as compared to region 1 because of COVID.
Coefficient is significant at 95 percent level

Code:
  df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$REGION)

df<-filter(df, REGION=='4')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all product in REGION 4 before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)

However from the graph we see that most of the outlier price are gone after covid because of which the average price seems to fall down, meaning that people might have avoided expensive stuffs because of the pandemic




3) 
# Simple linear regression with all the variables except UNIT and PRICE as Y variable with interactive term 
COVID and PARENT

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(PRICE~.+COVID*PARENT, data = df)
summary(mod)


# Basically with covid, PARENT 1, 3, 5,7 and private label prices went up, however
# the price of parent 2 went down

PARENT 1
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

df<-filter(df, PARENT=='PARENT 1')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PARENT 1 PRODUCT before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)

PARENT 3
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

df<-filter(df, PARENT=='PARENT 3')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PARENT 3 PRODUCT before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)

PARENT 5
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

df<-filter(df, PARENT=='PARENT 5')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PARENT 5 PRODUCT before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)

PARENT 7
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

df<-filter(df, PARENT=='PARENT 7')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PARENT 7 PRODUCT before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)


PARENT 2
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PARENT)

df<-filter(df, PARENT=='PARENT 2')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PARENT 2 PRODUCT before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)

However from the figure we can see that the median is pretty much the same however because of lack of outlier price, the mean price might have gone price. The reason can be high price product of PARENT 2, might have gone down in sales

4)

# Simple linear regression with all the variables except UNIT and PRICE as Y variable with interactive term 
COVID and  PRODUCT.TYPE

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(PRICE~.+COVID*PRODUCT.TYPE, data = df)
summary(mod)


# Basically with covid, PRODUCT.TYPEZUCCHINI  prices went up, 
# the coefficent is significant as well

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PRODUCT.TYPE)

df<-filter(df, PRODUCT.TYPE=='ZUCCHINI')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of PRODUCT.TYPE=='ZUCCHINI' before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)




5)
# Simple linear regression with all the variables except UNIT and PRICE as Y variable with interactive term 
COVID and PACKAGING.GROUP

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
names(df)
df$REGION<-factor(df$REGION)
names(df)

mod <- lm(PRICE~.+COVID*PACKAGING.GROUP, data = df)
summary(mod)



# Basically with covid, Product which aren't package with BAG, those product's prices went up, 
# the coefficent is significant as well. 

df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
table(df$PACKAGING.GROUP)

df<-filter(df, PACKAGING.GROUP=='OTHERS')
boxplot(PRICE~COVID,
        data=df,
        main=" PRICE of all PRODUCT that aren't packaged in BAGs before and after COVID",
        xlab="COVID",
        ylab="PRICE",
        col="orange",
        border="brown"
)


































Multinomial code
df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
df$PRICE<-df$DOLLARS/df$UNITS
df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
df$PRODUCT.TYPE<-relevel(factor(df$PRODUCT.TYPE), ref="ASPARAGUS")
df$REGION<-factor(df$REGION)

test <- multinom(PRODUCT.TYPE ~REGION+PARENT+COVID+PRICE+PRICE*COVID+REGION*COVID+COVID*PARENT, data = df)
stargazer(test, type = "html", coef=list(model6.rrr), p.auto=F, out="Multinomaildoubletriple 
with interaction COVID and PRICE and COVID and REGION")


stargazer(test, title="Regression Results",
          
          model6.rrr = exp(coef(test))
          stargazer(test, type = "html", coef=list(model6.rrr), p.auto=F, out="model6rrr.htm")
          
          
          
          install.
          
          model6.rrr = exp(coef(test))
          stargazer(model6, type = "html", coef=list(model6.rrr), p.auto=F, out="model6rrr.htm")
          
          
          
          df$REGION<-factor(df$REGION)
          names(df)
          
          mod <- lm(PRICE~.+COVID*PARENT, data = df)
          summary(mod)
          
          
          # trail
          require(foreign)
          require(nnet)
          require(ggplot2)
          require(reshape2)
          ml <- read.dta("https://stats.idre.ucla.edu/stat/data/hsbdemo.dta")
          
          with(ml, table(ses, prog))
          
          
          
          
          df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
          df$PRICE<-df$DOLLARS/df$UNITS
          table(df$PACKAGING.GROUP)
          
          df<-filter(df, PACKAGING.GROUP=='OTHERS')
          boxplot(PRICE~COVID,
                  data=df,
                  main=" PRICE of all PRODUCT that aren't packaged in BAGs before and after COVID",
                  xlab="COVID",
                  ylab="PRICE",
                  col="orange",
                  border="brown"
          )
          
          tab
          
          
          library(dplyr)
          
          
          df
          
          table(df$REGION)
          
          
          
          df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
          df$PRICE<-df$DOLLARS/df$UNITS
          #attach(df)
          plot(UNITS ~ PRICE, data=df)
          abline(lm(UNITS ~ PRICE, data=df), col="red" ,
                 xlab="PRICE", ylab="UNIT SALES",
                 main="Scatter Plot")
          
          
          
          names(df)
          names(df)
          
          require(foreign)
          require(nnet)
          require(ggplot2)
          require(reshape2)
          install.package('stargazer')
          library(stargazer)
          
          
          
          
          
          
          df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
          df$PRICE<-df$DOLLARS/df$UNITS
          df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS,UNITS) )
          df$PRODUCT.TYPE<-relevel(factor(df$PRODUCT.TYPE), ref="ASPARAGUS")
          df$REGION<-factor(df$REGION)
          #require(nnet)
          
          #library(stargazer)
          
          test <- multinom(PRODUCT.TYPE ~REGION+PARENT+COVID+PRICE+PRICE*COVID+REGION*COVID, data = df)
          model6.rrr = exp(coef(test))
          stargazer(test, type = "html", coef=list(model6.rrr), p.auto=F, out="MULTI_FULL_MODEL.html")
          
          
          
          
          
          
          
          
          
          
          
          df <- read.csv(file = 'Desktop/datset/Vegetable_without_factor.csv')
          df$PRICE<-df$DOLLARS/df$UNITS
          df=subset(df, select = -c(WEEK.ENDING,X,PRIVATE.LABEL.NATIONAL,CATEGORY,DOLLARS) )
          names(df)
          df$REGION<-factor(df$REGION)
          names(df)
          
          test <- lm(UNITS~PARENT, data = df)
          
          library(stargazer)
          
          model6.rrr = exp(coef(test))
          stargazer(test, type = "html", coef=list(model6.rrr), p.auto=F, out="Linear_Regression_y(UNITS).html)

