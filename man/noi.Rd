\name{noi}
\Rdversion{1.1}
\alias{noi}

\title{Identification of MRCAs for Clades}

\description{
This function identifies the most recent common ancestor (MRCA) nodes for one or more sets of taxa/tips.
}

\usage{
noi(phy, group, regex = FALSE, stem = FALSE, monophyletic = FALSE)
}

\arguments{
  \item{phy}{an object of class \code{\link[ape]{phylo}}.}
  
  \item{group}{a vector or list of vectors of mode \code{character} specifying the taxon set(s).}
  
  \item{regex}{a logical, if \code{regex = TRUE}, taxon sets are matched to the tip labels as regular expressions of the form \code{"taxon1|taxon2"}; otherwise strings will be matched exactly (see \code{\link{which}}).}
  \item{stem}{logical}
  \item{monophyletic}{logical}
}

\value{
a vector of mode \code{"numeric"}
}

\author{Christoph Heibl}

\seealso{\code{\link[ape]{mrca}}; \code{\link{descendants}} for the contrary operation to \code{noi}.
}

\examples{
# molecular phylogeny of Eurasian vipers:
# ---------------------------------------
#data(viperidae)	
#gen <- sapply(viperidae$tip.label, function(x) unlist(strsplit(x, "_"))[1])
#tax <- data.frame(genus = gen, species = viperidae$tip.label, row.names = NULL)

# group be a data frame
# ----------------------------------------------------
## .. to be added ..

# group can be a list
# -------------------
#myclades <- split(tax$species, tax$genus)
#nds <- noi(viperidae, myclades)
#plot(viperidae)
#nodeInfo(nds)

# group might contain tip numbers
# -------------------------------
#group <- list(c(17, 22), c(13, 1))
#plot(viperidae)
#append2tips(phy, tips = unlist(group), pch = 19)
#nds <- noi(viperidae, myclades)
#nodeInfo(nds)

# the 'group' argument can also take regular expressions
# ------------------------------------------------------
#rex <- "aspis"
#node <- noi(viperidae, rex, regex = TRUE)
#plot.phylo(viperidae, tip.color = 0, edge.color = 0)
#box.clades(viperidae, nodes = node, col = "#D2A6A7", align = "all")
#plot.phylo.upon(viperidae)
#nodelabels(node = node, pch = 21, cex = 1.2, col = "red", bg = "#D2A6A7")

# if the 'group' argument is a list of elements of length 2,
# n = length(group) nodes of interest will be returned
# ----------------------------------------------------
#group <- list(
#    c("Vipera_berus", "Vipera_ursinii"),
#    c("Vipera_aspis_ssp._aspis", "Vipera_latastei"),
#    c("Vipera_ammodytes_ssp._ammodytes", 
#        "Vipera_ammodytes_ssp._montandoni"),
#    c("Macrovipera_lebetina", "Vipera_wagneri")
#)
#clades <- noi(viperidae, group)
#plot.phylo(viperidae, tip.color = 0, edge.color = 0)
#box.clades(viperidae, nodes = clades, col = c("#FFFFA5", "#D2A6A7",
#    "#A7D2A5", "#A5A6D2"), align = "all")
#plot.phylo.upon(viperidae)
}
