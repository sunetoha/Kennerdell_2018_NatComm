# Prepare a seperate legend for a figure:
library(RColorBrewer)
colSet <- brewer.pal(12, "Paired")
outpath <- "~/Desktop/brain/_8A_ageCorGenes_htmp"
setwd(outpath)
jpeg("legend.jpg", width=1800, height=1100, bg="transparent", res=300)
plot.new()
par(lend = 3, 
    mar=c(0.3,0.3,0.3,0.3),
    bg="transparent")           # square line ends for the color legend
legend("left",      
legend = expression(paste(italic("wt"), ", ", aged, ", ", 29, degree, C),
                    paste(italic("E(z)"), ", ", ts/null, ", ", aged, ", ", 29, degree, C), 
                    paste(italic("wt"), ", ", aged, ", ", 25, degree, C),
                    paste(italic("E(z)"), ", ", ts/null, ", ", aged, ", ", 25, degree, C), 
                    paste(italic("wt"), ", ", young, ", ", 25, degree, C)),
       
       #legend = rev(c("wt, young, 25", "wt, aged, 25", "wt, aged, 29",
       #               "E(z) ts/null, aged, 25", "E(z) ts/null, aged, 29")), 
       col = c(colSet[8], colSet[10], colSet[7], colSet[9], colSet[1]), 
       lwd = 20, bty = "n", bg="transparent",
       cex=2 
)
dev.off()
# Try as Cairo PDF:
cairo_pdf("legend.pdf", width=6.5, height=4, bg="transparent")
plot.new()
quartzFonts(arial=c("Arial", "Arial Italic", "Arial Bold", "Arial Bold Italic"))
par(lend = 3, family="arial",
    mar=c(0.3,0.3,0.3,0.3),
    bg="transparent")           # square line ends for the color legend
legend("left",      
       legend = expression(paste(italic("wt"), ", ", aged, ", ", 29, degree, C),
                           paste(italic("E(z)"), ", ", ts/null, ", ", aged, ", ", 29, degree, C), 
                           paste(italic("wt"), ", ", aged, ", ", 25, degree, C),
                           paste(italic("E(z)"), ", ", ts/null, ", ", aged, ", ", 25, degree, C), 
                           paste(italic("wt"), ", ", young, ", ", 25, degree, C)),
       
       #legend = rev(c("wt, young, 25", "wt, aged, 25", "wt, aged, 29",
       #               "E(z) ts/null, aged, 25", "E(z) ts/null, aged, 29")), 
       col = c(colSet[8], colSet[10], colSet[7], colSet[9], colSet[1]), 
       lwd = 5, bty = "n", bg="transparent",
       cex=2 
)
dev.off()




jpeg("legend2.jpg", width=2020, height=1060, res=300, bg="transparent")
plot.new()
par(lend = 3, 
    mar=c(0.3,0.3,0.3,0.3),
    bg="transparent")           # square line ends for the color legend
legend("left",
       title=expression(paste("Genes Downregulated in", italic(" E(z) "),  "mutants:")),
       legend = expression(paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.5),
                           paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.3),
                           paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.15)),
       
       
#       legend = c("log2-fold-change < -0.5", 
#                      "log2-fold-change < -0.3", 
#                      "log2-fold-change < -0.15"), 
       col = c("#1F78B4", "#84B5A8", "#DDEB9D"), 
       lwd = 12, bty = "n", bg="transparent",
       cex=2 
)
dev.off()
# Try as Cairo PDF:
cairo_pdf("legend2.pdf", width=7, height=4, bg="transparent")
plot.new()
quartzFonts(arial=c("Arial", "Arial Italic", "Arial Bold", "Arial Bold Italic"))
par(lend = 3, family="arial",
    mar=c(0.3,0.3,0.3,0.3),
    bg="transparent")           # square line ends for the color legend
legend("left",
       title=expression(paste("Genes Downregulated in", italic(" E(z) "),  "mutants:")),
       legend = expression(paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.5),
                           paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.3),
                           paste(log[2], "-", fold, "-", change, phantom(0), "<", phantom(0), "-", 0.15)),
       
       
       #       legend = c("log2-fold-change < -0.5", 
       #                      "log2-fold-change < -0.3", 
       #                      "log2-fold-change < -0.15"), 
       col = c("#1F78B4", "#84B5A8", "#DDEB9D"), 
       lwd = 4, bty = "n", bg="transparent",
       cex=2 
)
dev.off()
