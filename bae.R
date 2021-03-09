# Upset diagramm

install.packages("UpSetR", dependencies = TRUE)

library(UpSetR)

# Data


# to set expression format https://www.littlemissdata.com/blog/set-analysis 


expressionInput = c(Mimulus_guttatus=6853,	Mimulus_guttatus&Ocimum_tenuiflorum=287,	Mimulus_guttatus&Perilla_citriodora=356,	Mimulus_guttatus&Salvia_miltiorrhiza=81,	Mimulus_guttatus&Sesamum_indicum=922,	Mimulus_guttatus&Salvia_splendens=127,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora=335,	Mimulus_guttatus&Ocimum_tenuiflorum&Salvia_miltiorrhiza=125,	Mimulus_guttatus&Ocimum_tenuiflorum&Sesamum_indicum=317,	Mimulus_guttatus&Ocimum_tenuiflorum&Salvia_splendens=207,	Mimulus_guttatus&Perilla_citriodora&Salvia_miltiorrhiza=233,	Mimulus_guttatus&Perilla_citriodora&Sesamum_indicum=367,	Mimulus_guttatus&Perilla_citriodora&Salvia_splendens=311,	Mimulus_guttatus&Salvia_miltiorrhiza&Sesamum_indicum=108,	Mimulus_guttatus&Salvia_miltiorrhiza&Salvia_splendens=193,	Mimulus_guttatus&Sesamum_indicum&Salvia_splendens=250,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza=339,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Sesamum_indicum=869,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Salvia_splendens=989,	Mimulus_guttatus&Ocimum_tenuiflorum&Salvia_miltiorrhiza&Sesamum_indicum=258,	Mimulus_guttatus&Ocimum_tenuiflorum&Salvia_miltiorrhiza&Salvia_splendens=454,	Mimulus_guttatus&Ocimum_tenuiflorum&Sesamum_indicum&Salvia_splendens=829,	Mimulus_guttatus&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum=430,	Mimulus_guttatus&Perilla_citriodora&Salvia_miltiorrhiza&Salvia_splendens=540,	Mimulus_guttatus&Perilla_citriodora&Sesamum_indicum&Salvia_splendens=1324,	Mimulus_guttatus&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=910,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum=1460,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Salvia_splendens=5668,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Sesamum_indicum&Salvia_splendens=8761,	Mimulus_guttatus&Ocimum_tenuiflorum&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=4324,	Mimulus_guttatus&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=5960,	Mimulus_guttatus&Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=109584,	Ocimum_tenuiflorum=17725,	Ocimum_tenuiflorum&Perilla_citriodora=1261,	Ocimum_tenuiflorum&Salvia_miltiorrhiza=648,	Ocimum_tenuiflorum&Sesamum_indicum=294,	Ocimum_tenuiflorum&Salvia_splendens=1021,	Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza=466,	Ocimum_tenuiflorum&Perilla_citriodora&Sesamum_indicum=322,	Ocimum_tenuiflorum&Perilla_citriodora&Salvia_splendens=660,	Ocimum_tenuiflorum&Salvia_miltiorrhiza&Sesamum_indicum=76,	Ocimum_tenuiflorum&Salvia_miltiorrhiza&Salvia_splendens=711,	Ocimum_tenuiflorum&Sesamum_indicum&Salvia_splendens=148,	Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum=230,	Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Salvia_splendens=1773,	Ocimum_tenuiflorum&Perilla_citriodora&Sesamum_indicum&Salvia_splendens=496,	Ocimum_tenuiflorum&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=227,	Ocimum_tenuiflorum&Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=2014,	Perilla_citriodora=10240,	Perilla_citriodora&Salvia_miltiorrhiza=797,	Perilla_citriodora&Sesamum_indicum=269,	Perilla_citriodora&Salvia_splendens=769,	Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum=225,	Perilla_citriodora&Salvia_miltiorrhiza&Salvia_splendens=634,	Perilla_citriodora&Sesamum_indicum&Salvia_splendens=279,	Perilla_citriodora&Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=310,	Salvia_miltiorrhiza=9148,	Salvia_miltiorrhiza&Sesamum_indicum=280,	Salvia_miltiorrhiza&Salvia_splendens=918,	Salvia_miltiorrhiza&Sesamum_indicum&Salvia_splendens=149,	Sesamum_indicum=7267,	Sesamum_indicum&Salvia_splendens=115,	Salvia_splendens=16968)


upset(fromExpression(expressionInput),
      nsets = 6,
      order.by = "freq", 
      matrix.color = "dodgerblue", 
      main.bar.color = "dodgerblue", 
      sets.bar.color = "dodgerblue", 
      shade.color = "dodgerblue", 
      mainbar.y.label = "Number of shared genes", 
      sets.x.label = "Number of genes per sample")


help(upset)

#############################################################################################################

#Check the current directory
getwd()

#Data importation
data1 = read.csv("pc_r_genes_count_updated.csv", sep=",", h=T)
data2 = read.csv("pc_nbs_count_per_chromosome_updated.csv", sep=",", h=T)
data2_1 = read.csv("pc_nbs_count_per_chromosome10.csv", sep=",", h=T)
data2_2 = read.csv("pc_nbs_count_per_chromosome_updated.csv", sep=",", h=T)
#Overview of the data
View(data1)
View(data2)
View(data2_1)

#Variable names of the data
names(data1)
names(data2)


#libraries installation

install.packages("dplyr", dependencies = TRUE)

install.packages("ggplot2", dependencies = TRUE)

install.packages("cowplot", dependencies = TRUE)

install.packages("gghighlight", dependencies = TRUE)

install.packages("remotes", dependencies = TRUE)

library(remotes)

remotes::install_github("thomasp85/patchwork")

remotes::install_github('bbc/bbplot')


# Libraries loading

library(ggplot2)
library(cowplot)
library(gghighlight)
library(patchwork)
library(dplyr)
library(bbplot)



# Plot 01



p <- ggplot(data = data1, aes(x = reorder(R.genes.types, Number), y = Number)) +

          geom_bar(stat="identity", 
                   position="identity",
                   fill= c("#D55E00D0","#B0B0B0D0","#008020","#990000", "#1380A1"))+ #, "#ffff00"))+
                 #  fill="#1380A1") +
          
          geom_hline(yintercept = 0, size = 1, colour="#333333") +
          bbc_style() +
          theme(panel.grid.major.x = element_line(color="#cbcbcb"), 
          panel.grid.major.y=element_blank())+
          labs(title="",
          subtitle = "")+
          coord_flip() +
          
          geom_label(aes(x = R.genes.types, y = Number,label = round(Number, 0)),
                     hjust = 0, 
                     vjust = 0.5, 
                     colour = "red", 
                    fill = NA, 
                   label.size = NA, 
                  family="Helvetica", 
                  size = 4.5) #+
  
          #scale_y_continuous(limits=c(0,310),
                     #breaks = seq(0, 310, by = 100,
                     #labels = c("100", "200", "300", "R-genes" )))


       #cowplot::theme_minimal_vgrid(16) +
       #theme(axis.title.y = element_blank(), 
       #legend.position = "none") +
      #scale_fill_manual(name = NULL, values = c("#B0B0B0D0", "#D55E00D0")) +
      #xlab("Number of R-genes") 
      #ylab("Number of R-genes")
# source inspirational: https://bbc.github.io/rcookbook/#change_the_axis_text_manually
# https://designing-ggplots.netlify.app/

  p  
  
  
  
  # Plot 002
  
  data2$Chromosome <- factor(data2$Chromosome,levels = 
                                                 c("Unfound","S99_C1","S552_C1", "S442_C1", "S339_C1", 
                                                   "S26_C17", "S186_C1", "S173_C1", "S129_C1",
                                                   "Chr10", "Chr09", "Chr08","Chr07", "Chr06", "Chr05", "Chr04",
                                                   "Chr03", "Chr02","Chr01"))
                                      
  
  stacked_bars <- ggplot(data = data2, 
                         aes(x = Chromosome,
                             y = Number,
                             fill = R_gene_type)) +
    geom_bar(stat = "identity", 
             position = "fill") +
    
    bbc_style() +
    
    theme(panel.grid.major.x = element_line(color="#cbcbcb"), 
          panel.grid.major.y=element_blank())+
    
    scale_y_continuous(labels = scales::percent)  +
    
    #scale_fill_viridis_d(direction = -1) +
    
    scale_fill_manual(values = c("#0080ff", "#580025", "#ff7f00","#13a19f","#008020"))+
    geom_hline(yintercept = 0, size = 1, colour = "#333333") +
    
    #labs(title = "How life expectancy varies",
    #subtitle = "% of population by life expectancy band, 2007") +
    
    theme(legend.position = "top", 
         legend.justification = "left") +
    
    guides(fill = guide_legend(reverse = TRUE)) +
    
    coord_flip()
  
  stacked_bars
                     
                     
#Inspirationnal color choice https://www.colorhexa.com/    
#Inspirational set an order for factor level https://sebastiansauer.github.io/ordering-bars/
   



  
  # Plot 002.1
  
  data2_1$Chromosome <- factor(data2_1$Chromosome,levels = 
                               c("Chr10", "Chr09", "Chr08","Chr07", "Chr06", "Chr05", "Chr04",
                                 "Chr03", "Chr02","Chr01"))
  
  
  stacked_bars_2 <- ggplot(data = data2_1, 
                         aes(x = Chromosome,
                             y = Number,
                             fill = R_gene_type)) +
    geom_bar(stat = "identity", 
             position = "fill") +
    
    bbc_style() +
    
    theme(panel.grid.major.x = element_line(color="#cbcbcb"), 
          panel.grid.major.y=element_blank())+
    
    scale_y_continuous(labels = scales::percent)  +
    
    #scale_fill_viridis_d(direction = -1) +
    
    scale_fill_manual(values = c("#4da6ff", "#a50045", "#ffa54d","#1c83e4","#00cd33"))+
    geom_hline(yintercept = 0, size = 1, colour = "#333333") +
    
    #labs(title = "How life expectancy varies",
    #subtitle = "% of population by life expectancy band, 2007") +
    #geom_curve(aes(x = 2, y = 1, xend = 1.9, yend = 0.9), 
              # colour = "#555555", 
               #size=0.5, 
               #curvature = -0.2,
               #arrow = arrow(length = unit(0.03, "npc"))) +
    
    theme(legend.position = "top", 
          legend.justification = "left") +
    
    guides(fill = guide_legend(reverse = TRUE)) +
    
    
    geom_text(aes(x = 10, y = 0.7, label = "[N: 24] [NL: 18] [RNL: 1]"), 
               hjust = 0, 
               vjust = 0.5, 
               colour = "white", 
               size = 4.5) +
    geom_text(aes(x = 9, y = 0.7, label = "[N: 26] [NL: 28]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 8, y = 0.7, label = "[N: 20] [NL: 18] [RNL: 2]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 7, y = 0.7, label = "[N: 40] [NL: 46] [RN: 1] [RNL: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 6, y = 0.7, label = "[N: 25] [NL: 9] [RNL: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 5, y = 0.7, label = "[N: 18] [NL: 16] [RNL: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 4, y = 0.7, label = "[N: 13] [NL: 22] [RNL: 5]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 3, y = 0.7, label = "[N: 38] [NL: 12] [RN:12] [RNL: 2]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 2, y = 0.7, label = "[CNL: 1] [N: 33] [NL:24] [RNL: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 1, y = 0.7, label = "[N: 32] [NL: 32] [RNL: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    
    #geom_label(aes(x = 10, y = 0.7, label = "N:24 NL:18 RNL:1"), 
     #          hjust = 0, 
      #         vjust = 0.5, 
       #        colour = "white", 
        #       fill = "white", 
         #      label.size = NA, 
          #     family="Helvetica", 
           #    size = 8) +
    
    
    coord_flip()
  
  stacked_bars_2
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  # Plot 002.2
  
  data2_2$Chromosome <- factor(data2_2$Chromosome,
                      levels = c("Chr01", "Chr02",
                                 "Chr03", "Chr04", 
                                 "Chr05","Chr06",
                                 "Chr07","Chr08",
                                 "Chr09", "Chr10",
                                 "Unanchored"))
  
  
  stacked_bars_3 <- ggplot(data = data2_2, 
                           aes(x = Chromosome,
                               y = Number,
                               fill = R_genes_Type)) +
    geom_bar(stat = "identity", 
             position = "fill") +
    
    bbc_style() +
    
    theme(panel.grid.major.x = element_line(color="#cbcbcb"), 
          panel.grid.major.y=element_blank())+
    
    scale_y_continuous(labels = scales::percent)  +
    
    # scale_y_reverse() + #if you want to verse the y axis
    
    #scale_fill_viridis_d(direction = -1) +
    
    scale_fill_manual(values = c("#D55E00D0","#1380A1","#B0B0B0D0","#008020","#990000"))+
    geom_hline(yintercept = 0, size = 1, colour = "#333333") +
    
    #labs(title = "How life expectancy varies",
    #subtitle = "% of population by life expectancy band, 2007") +
    #geom_curve(aes(x = 2, y = 1, xend = 1.9, yend = 0.9), 
    # colour = "#555555", 
    #size=0.5, 
    #curvature = -0.2,
    #arrow = arrow(length = unit(0.03, "npc"))) +
    
    theme(legend.position = "top", 
          legend.justification = "left") +
    
    guides(fill = guide_legend(reverse = TRUE))+
    
    
    #geom_text(aes(x = 11, y = 0.7, label = "[NBS-ARC: 42] [CC-NBS-ARC: 1]"), 
     #         hjust = 0, 
      #       vjust = 0.5, 
       #      colour = "white", 
        #      size = 4.5) #+
  #  geom_text(aes(x = 10, y = 0.7, label = "[N: 26] [NL: 28]"), 
   #           hjust = 0, 
    #          vjust = 0.5, 
     #         colour = "white", 
      #        size = 4.5) +
    #geom_text(aes(x = 9, y = 0.7, label = "[N: 20] [NL: 18] [RNL: 2]"), 
     #         hjust = 0, 
      #        vjust = 0.5, 
       #       colour = "white", 
        #      size = 4.5) +
    #geom_text(aes(x = 8, y = 0.7, label = "[N: 40] [NL: 46] [RN: 1] [RNL: 1]"), 
     #         hjust = 0, 
      #        vjust = 0.5, 
       #       colour = "white", 
        #      size = 4.5) +
    #geom_text(aes(x = 7, y = 0.7, label = "[N: 25] [NL: 9] [RNL: 1]"), 
     #         hjust = 0, 
      #        vjust = 0.5, 
       #       colour = "white", 
        #      size = 4.5) +
  #  geom_text(aes(x = 6, y = 0.7, label = "[N: 18] [NL: 16] [RNL: 1]"), 
  #          hjust = 0, 
  #          vjust = 0.5, 
  #          colour = "white", 
  #           size = 4.5) +
  #   geom_text(aes(x = 5, y = 0.7, label = "[N: 13] [NL: 22] [RNL: 5]"), 
  #           hjust = 0, 
  #           vjust = 0.5, 
  #           colour = "white", 
  #           size = 4.5) +
  #  geom_text(aes(x = 4, y = 0.7, label = "[N: 38] [NL: 12] [RN:12] [RNL: 2]"), 
  # # # #           hjust = 0, 
  #     vjust = 0.5, 
  #           colour = "white", 
  #           size = 4.5) +
  # geom_text(aes(x = 3, y = 0.7, label = "[CNL: 1] [N: 33] [NL:24] [RNL: 1]"), 
  #           hjust = 0, 
  #           vjust = 0.5, 
  #           colour = "white", 
  #           size = 4.5) +
  # geom_text(aes(x = 2, y = 0.7, label = "[N: 32] [NL: 32] [RNL: 1]"), 
  #           hjust = 0, 
  #           vjust = 0.5, 
  #           colour = "white", 
  #           size = 4.5) +
  # geom_text(aes(x = 1, y = 0.7, label = "[N: 9] [NL: 1]"), 
  #           hjust = 0, 
  #           vjust = 0.5, 
  #           colour = "white", 
  #           size = 4.5) +
  # 
    #geom_label(aes(x = 10, y = 0.7, label = "N:24 NL:18 RNL:1"), 
    #          hjust = 0, 
    #         vjust = 0.5, 
    #        colour = "white", 
    #       fill = "white", 
    #      label.size = NA, 
    #     family="Helvetica", 
    #    size = 8) +
    
    
   coord_flip() 
    
  
  
  stacked_bars_3
  
  
  
  stacked_bars_3 +
  geom_text(aes(x = 11, y = 0.1, label = "[NBS-ARC: 10] [CC-NBS-ARC: 1] [NBS-ARC-LRR: 1]"), 
           hjust = 0, 
         vjust = 0.5, 
        colour = "white", 
        size = 4.5) +
    geom_text(aes(x = 10, y = 0.1, label = "[NBS-ARC: 31] [CC-NBS-ARC: 1] [CC-NBS-ARC-LRR: 3] [NBS-ARC-LRR: 30]"), 
             hjust = 0, 
           vjust = 0.5, 
          colour = "white", 
          size = 4.5) +
    geom_text(aes(x = 9, y = 0.1, label = "[NBS-ARC: 39] [CC-NBS-ARC: 2] [CC-NBS-ARC-LRR: 14] [NBS-ARC-LRR: 4]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 8, y = 0.1, label = "[NBS-ARC: 49] [CC-NBS-ARC: 15]"), 
             hjust = 0, 
             vjust = 0.5, 
             colour = "white", 
             size = 4.5) +
    geom_text(aes(x = 7, y = 0.1, label = "[NBS-ARC: 15] [CC-NBS-ARC: 24] [RPW8-NBS-ARC: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 6, y = 0.1, label = "[NBS-ARC: 28] [CC-NBS-ARC: 7]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 5, y = 0.1, label = "[NBS-ARC: 33] [CC-NBS-ARC: 2]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 4, y = 0.1, label = "[NBS-ARC: 68] [CC-NBS-ARC: 20]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 3, y = 0.1, label = "[NBS-ARC: 32] [CC-NBS-ARC: 8]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 2, y = 0.1, label = "[NBS-ARC: 48] [CC-NBS-ARC: 6]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) +
    geom_text(aes(x = 1, y = 0.1, label = "[NBS-ARC: 42] [CC-NBS-ARC: 1]"), 
              hjust = 0, 
              vjust = 0.5, 
              colour = "white", 
              size = 4.5) 
  
  
  
  
  
  
  
  
  
  
  
  
  
  # Plot 03
  
  #Package loading
  
  install.packages("LinkageMapView")
  library("LinkageMapView")
  
  
  #
  ?lmv.linkage.plot
  
  
  ## I prefer RIdeogram package
  library(remotes)
  remotes::install_github('TickingClock1992/RIdeogram')
  library(RIdeogram)
  human
  
  ## Data
  data(human_karyotype, package="RIdeogram")
  data(gene_density, package="RIdeogram")
  data(Random_RNAs_500, package="RIdeogram")
  
  View(human_karyotype)
  View(gene_density)
  View(Random_RNAs_500)
  
  
  
  head(human_karyotype)
  head(gene_density)
  head(Random_RNAs_500)
  
  
  
  
  
  
  
  human_karyotype
  
  human_karyotype <- read.table("karyotype.txt", sep = "\t", header = T, stringsAsFactors = F)
  
  #gene density
  
  gene_density <- GFFex(input = "gencode.v32.annotation.gff3.gz", karyotype = "karyotype.txt", feature = "gene", window = 1000000)
  
  head(gene_density)  
  
  
  #Now, let's begin.
  
  #First, we draw a idiogram with no mapping data.
  
  ideogram(karyotype = human_karyotype)
  convertSVG("chromosome.svg", device = "png")
  
  #Next, we can map genome-wide data on the chromosome idiogram. 
  #In this case, we visulize the gene density across the human genome.
  
  ideogram(karyotype = human_karyotype, overlaid = gene_density)
  convertSVG("chromosome.svg", device = "png")

  
  #Alternatively, we can map some genome-wide data with track labels next to the chromosome idiograms.
  
  ideogram(karyotype = human_karyotype, label = Random_RNAs_500, label_type = "marker")
  convertSVG("chromosome.svg", device = "png")
  