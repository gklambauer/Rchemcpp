\name{sd2gram}
\alias{sd2gram}
\title{sd2gram - Similarity of molecules by the marginalized kernel and
proposed extensions.}
\usage{
  sd2gram(sdf, sdf2, stopP = 0.1, filterTottering = FALSE,
    converg = as.integer(1000), atomKernelMatrix = "",
    flagRemoveH = FALSE, morganOrder = as.integer(0),
    silentMode = FALSE, returnNormalized = TRUE,
    detectArom = FALSE)
}
\arguments{
  \item{sdf}{File containing the molecules. Must be in MDL
  file format (MOL and SDF files). For more information on
  the file format see
  http://en.wikipedia.org/wiki/Chemical_table_file.}

  \item{sdf2}{A second file containing molecules. Must also
  be in SDF format. If specified the molecules of the first
  file will be compared with the molecules of this second
  file. Default = "missing".}

  \item{stopP}{The probability that a random walk stops.
  The higher the value the more weigth is put on shorter
  walks. Default = 0.1.}

  \item{filterTottering}{A logical specifying whether
  tottering paths should be removed. Default = FALSE.}

  \item{converg}{A numeric value specifying when
  convergence is reached. The algorithm stops when the
  kernel value does not change by more than 1/c, where c is
  the value specified by the converg option. Default =
  1000.}

  \item{atomKernelMatrix}{A string that sets the similarity
  measure between atoms that should be used. Default =
  "missing".}

  \item{flagRemoveH}{A logical that indicates whether
  H-atoms should be removed or not. Default = FALSE.}

  \item{morganOrder}{The order of the DeMorgan indices to
  be used. If set to zero, no DeMorgan indices are used.
  The higher the order the more types of atoms exist and
  consequently the more dissimilar will be the molecules.
  Default = 0.}

  \item{silentMode}{Whether or not the program should print
  progress reports to the standart output. Default =
  FALSE.}

  \item{returnNormalized}{A logical specifying whether a
  normalized kernel matrix should be returned. Default =
  TRUE.}

  \item{detectArom}{Whether aromatic rings should be
  detected and aromatic bonds should a special bond type.
  If large molecules are in the data set the detection of
  aromatic rings can be very time-consuming. (Default =
  FALSE).}
}
\value{
  A numeric matrix containing the similarity values between
  the molecules.
}
\description{
  This tools compute the marginalized kernel
  (\cite{Kashima, 2004}) and its proposed extensions
  (\cite{Mahe, 2005)}.
}
\examples{
sdfolder <- system.file("extdata",package="Rchemcpp")
sdf <- list.files(sdfolder,full.names=TRUE,pattern="small")
K <- sd2gram(sdf)
}
\author{
  Michael Mahr <rchemcpp@bioinf.jku.at> c++ function
  written by Jean-Luc Perret and Pierre Mahe.
}
\references{
  (Kashima, 2004) -- H. Kashima, K. Tsuda, and A. Inokuchi.
  Kernels for graphs. In B. Schoelkopf, K. Tsuda, and J.P.
  Vert, editors, Kernel Methods in Computational Biology,
  pages 155-170. MIT Press, 2004.

  (Mahe, 2005) -- P. Mahe, N. Ueda, T. Akutsu, J.-L.
  Perret, and J.-P. Vert. Graph kernels for molecular
  structure- activity relationship analysis with support
  vector machines. J Chem Inf Model, 45(4):939-51, 2005.
}

