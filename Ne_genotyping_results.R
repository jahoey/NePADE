setwd("/Users/jenniferhoey/Documents/Graduate School/Rutgers/Summer Flounder/Analysis/NePADE/")

counts.ne <- read.table("countsperindiv2.txt")

sum(counts.ne) #197931570; 190802200

mean(counts.ne[,1]) #585596.4; 576441.7
colMeans(counts.ne)

sd(counts.ne[,1]) #628558.2; 626768.1
summary(counts.ne)

######################################################
# Coverage across all individuals and reference sites
cov <- read.table("cov.stats2.txt") # this is cov.stats that ddocent outputs

(sum(cov$V4)/length(cov$V4))/331 # 25.2X when 338 larval individuals; 24.8 when 331 larvae
mean(cov$V4/331)

# Example to calculate coverage across SNPs
# Coverage across 285 individuals and 3979 SNPs
# read in list of contig names containing 3979 SNPs
setwd("~/Documents/Graduate School/Rutgers/Summer Flounder/Analysis/NePADE/newref_alltrimmed140/")
# all <- read.table("all_contigs3979.txt")
all <- read.table("all_contigs3821.txt")

all.cov <- cov[cov$V1%in%all$V1,] # keep 3821 contigs

(sum(all.cov$V4)/length(all.cov$V4))/280 # 62X when 285 larvae; 61.1 when 280 larvae
mean(all.cov$V4/280) # same as above

