featurePlot(x = train[,1:18],
            y = train$Purchase,
            plot = "box")
featurePlot(x = train[,1:18],
            y = train$Purchase,
            plot = "density",
            strip=strip.custom(par.strip.text=list(cex=.7)),
            scales = list(x = list(relation="free"), 
                          y = list(relation="free")))
