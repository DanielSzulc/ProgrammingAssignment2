## In this file I'm recreating vector cache function
## Just to practice and to test my understaind of solution proposed by the Professor

makeVector2<- function(x=numeric())
{
        m<-NULL
        set<-function (y)
        {
                x<<-y
                m<<-NULL
        }
        
        get<-function() x
        
        setmean<-function(mean) m<<-mean
        getmean<-function() m
        
        list(set = set,get= get,setmean = setmean,getmean = getmean)
}

cacheVectorMean2  <- function(z, ...)
{
        m<-z$getmean()
        if(!is.null(m))
        {
                message("getting cache data")
                return(m)
        }
        data<-z$get()
        m<-mean(data,...)
        z$setmean(m)
        m
}