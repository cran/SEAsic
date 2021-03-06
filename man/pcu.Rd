% Generated by roxygen2 (4.0.2): do not edit by hand
\name{pcu}
\alias{pcu}
\title{Plot Multiple Conditional/Unconditional Indices}
\usage{
pcu(con, u, s, d, connames, unames, ylab, xlab, colc, colu, pchc, ltyu, yleg,
  xleg, ylim)
}
\arguments{
\item{con}{a concatenated series of data frames produced by SEAsic functions for (up to 6) conditional indices}

\item{u}{a concatenated series of scalars representing (up to 6) unconditional indices, which can be entered directly or called in from previous SEAsic estimation of such indices}

\item{s}{scalar representing the standard deviation of equated scores in the overall population, or on any (sub)population of interest (e.g., synthetic population) (default is 1, which should be used when plotting unstandardized indices)}

\item{d}{unstandardized difference that matters}

\item{connames}{a row vector of quoted names for the conditional indices}

\item{unames}{a row vecotr of quoted names for the unconditional indices}

\item{ylab}{a quoted label for the y axis (default is "Equating Dependence")}

\item{xlab}{a quoted label for the x axis (default is "Score Scale")}

\item{colc}{a color designation for the conditional indices (default is a series of rainbow colors the length of u)}

\item{colu}{a color designation for the unconditional index lines (default is a series of rainbow colors matching colc)}

\item{pchc}{a row vector of shape designation for the conditional index data points (default is filled circle)}

\item{ltyu}{a row vector of line types for the unconditional index lines (default is straight line)}

\item{yleg}{a scalar indicating the value of the y axis at which the legend should sit (default is the maximum conditional index value for the first data frame in con)}

\item{xleg}{a scalar indicating the value of the x axis at which the legend should sit (default is the minimum value of the score scale in the first data frame in con)}

\item{ylim}{a row vector length of 2 with the minimum and maximum values for the y axis (default set at finite values in the plot)}
}
\value{
plot of multiple conditional and unconditional indices
}
\description{
Function can be used to place multiple conditional indices and their unconditional counterparts onto one plot, with the ability to alter the y-axis label, x-axis label, colors for each pair of indices, shapes of data points for each pair of indices, the placement of the legend and the limits of the y-axis.
}
\note{
All indices must be measured on the same scale (e.g., all unstandardized indices), and all conditional indices must have an unconditional counterpart in the plot.
}
\examples{
#Obtaining and plotting the unstandardized RSD(x) and RESD for all five subpopulations 
#in the example data set, ex.data
rsd_g1 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,3],d=.5)
rsd_g2 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,4],d=.5)
rsd_g3 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,5],d=.5)
rsd_g4 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,6],d=.5)
rsd_g5 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,7],d=.5)
resd_g1 <- resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,3],f=ex.data[,8])
resd_g2 <- resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,4],f=ex.data[,8])
resd_g3 <- resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,5],f=ex.data[,8])
resd_g4 <- resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,6],f=ex.data[,8])
resd_g5 <- resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,7],f=ex.data[,8])

pcu(con=c(rsd_g1,rsd_g2,rsd_g3,rsd_g4,rsd_g5),
u=c(resd_g1,resd_g2,resd_g3,resd_g4,resd_g5),d=.5,
connames=c("RSD Group 1","RSD Group 2","RSD Group 3","RSD Group 4","RSD Group 5"),
unames=c("RESD Group 1","RESD Group 2","RESD Group 3","RESD Group 4","RESD Group 5"),
ylim=c(0,8),yleg=8)

#Obtaining and plotting the standardized RSD(x) and RESD for all five subpopulations 
#in the example data set, ex.data
srsd_g1 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,3],d=.5,s=4.2)
srsd_g2 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,4],d=.5,s=4.2)
srsd_g3 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,5],d=.5,s=4.2)
srsd_g4 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,6],d=.5,s=4.2)
srsd_g5 <- rsd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,7],d=.5,s=4.2)
sresd_g1<-resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,3],f=ex.data[,8],s=4.2)
sresd_g2<-resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,4],f=ex.data[,8],s=4.2)
sresd_g3<-resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,5],f=ex.data[,8],s=4.2)
sresd_g4<-resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,6],f=ex.data[,8],s=4.2)
sresd_g5<-resd(x=ex.data[,1],o=ex.data[,2],g=ex.data[,7],f=ex.data[,8],s=4.2)

pcu(con=c(srsd_g1,srsd_g2,srsd_g3,srsd_g4,srsd_g5),
u=c(sresd_g1,sresd_g2,sresd_g3,sresd_g4,sresd_g5),d=.5,s=4.2,
connames=c("RSD Group 1","RSD Group 2","RSD Group 3","RSD Group 4","RSD Group 5"),
unames=c("RESD Group 1","RESD Group 2","RESD Group 3","RESD Group 4","RESD Group 5"),
ylim=c(0,2),yleg=2,ylab="Standardized Equating Dependence")

#Obtaining and plotting the unstandardized RMSD(x) and REMSD for all five subpopulations 
#in the example data set, ex.data
rmsd <- rmsd(x=ex.data[,1],o=ex.data[,2],
g=c(ex.data[,3],ex.data[,4],ex.data[,5],ex.data[,6],ex.data[,7]),
w=c(.1,.2,.4,.2,.1),d=.5)
remsd <- remsd(x=ex.data[,1],o=ex.data[,2],
g=c(ex.data[,3],ex.data[,4],ex.data[,5],ex.data[,6],ex.data[,7]),
f=ex.data[,8],w=c(.1,.2,.4,.2,.1))

pcu(con=c(rmsd),u=c(remsd),d=.5,connames=c("RMSD"),unames=c("REMSD"),ylim=c(0,4),yleg=4)
}
\author{
Anne Corinne Huggins-Manley
}
\seealso{
\code{\link{pc}}
}

