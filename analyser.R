
library(Biostrings)
library(seqinr)
library(adegenet)  
library(ape)
library(ggtree)
library(DECIPHER)
library(viridis)
library(ggplot2)
library(ggmsa)

# mandamos llamar los .fasta de los 20 paises

aus <- readDNAStringSet("/Users/Denisse/Downloads/paises/Austria.fasta", format="fasta",
                         nrec=-1L, skip=0L, seek.first.rec=FALSE,
                         use.names=TRUE, with.qualities=FALSE)

benin <- readDNAStringSet("/Users/Denisse/Downloads/paises/Benin.fasta", format="fasta",
                        nrec=-1L, skip=0L, seek.first.rec=FALSE,
                        use.names=TRUE, with.qualities=FALSE)

brazil <- readDNAStringSet("/Users/Denisse/Downloads/paises/Brazil.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

canada <- readDNAStringSet("/Users/Denisse/Downloads/paises/Canada.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

chile <- readDNAStringSet("/Users/Denisse/Downloads/paises/Chile.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

china <- readDNAStringSet("/Users/Denisse/Downloads/paises/China.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

egipto <- readDNAStringSet("/Users/Denisse/Downloads/paises/Egipto.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

francia <- readDNAStringSet("/Users/Denisse/Downloads/paises/Francia.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

hong <- readDNAStringSet("/Users/Denisse/Downloads/paises/Hong_Kong.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

indonesia <- readDNAStringSet("/Users/Denisse/Downloads/paises/Indonesia.fasta", format="fasta",
                          nrec=-1L, skip=0L, seek.first.rec=FALSE,
                          use.names=TRUE, with.qualities=FALSE)

kenya <- readDNAStringSet("/Users/Denisse/Downloads/paises/Kenya.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

mexico <- readDNAStringSet("/Users/Denisse/Downloads/paises/Mexico.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

nepal <- readDNAStringSet("/Users/Denisse/Downloads/paises/Nepal.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

newz <- readDNAStringSet("/Users/Denisse/Downloads/paises/NewZeland.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

peru <- readDNAStringSet("/Users/Denisse/Downloads/paises/Peru.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

uk <- readDNAStringSet("/Users/Denisse/Downloads/paises/ReinoUnido.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

russia <- readDNAStringSet("/Users/Denisse/Downloads/paises/Russia.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

suiza <- readDNAStringSet("/Users/Denisse/Downloads/paises/Suiza.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

uruguay <- readDNAStringSet("/Users/Denisse/Downloads/paises/Uruguay.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

usa <- readDNAStringSet("/Users/Denisse/Downloads/paises/USA.fasta", format="fasta",
                              nrec=-1L, skip=0L, seek.first.rec=FALSE,
                              use.names=TRUE, with.qualities=FALSE)

# Tamaño de secuencias

s_aus <- width(aus)
s_benin <- width(benin)
s_brazil <- width(brazil)
s_canada <- width(canada)
s_chile <- width(chile)
s_china <- width(china)
s_egipto <- width(egipto)
s_francia <- width(francia)
s_hong <- width(hong)
s_indonesia <- width(indonesia)
s_kenya <- width(kenya)
s_mexico <- width(mexico)
s_nepal <- width(nepal)
s_newz <- width(newz)
s_peru <- width(peru)
s_uk <- width(uk)
s_russia <- width(russia)
s_suiza <- width(suiza)
s_uruguay <- width(uruguay)
s_usa <- width(usa)

print(paste0("El tamano de la secuencia de Australia virus es: ", s_aus))
print(paste0("El tamano de la secuencia de Benin virus es: ", s_benin))
print(paste0("El tamano de la secuencia de Brazil virus es: ", s_brazil))
print(paste0("El tamano de la secuencia de Canada virus es: ", s_canada))
print(paste0("El tamano de la secuencia de Chile virus es: ", s_chile))
print(paste0("El tamano de la secuencia de China virus es: ", s_china))
print(paste0("El tamano de la secuencia de Egipto virus es: ", s_egipto))
print(paste0("El tamano de la secuencia de Francia virus es: ", s_francia))
print(paste0("El tamano de la secuencia de Hong Kong virus es: ", s_hong))
print(paste0("El tamano de la secuencia de Indonesia virus es: ", s_indonesia))
print(paste0("El tamano de la secuencia de Kenya virus es: ", s_kenya))
print(paste0("El tamano de la secuencia de Mexico virus es: ", s_mexico))
print(paste0("El tamano de la secuencia de Nepal virus es: ", s_nepal))
print(paste0("El tamano de la secuencia de New Zeland virus es: ", s_newz))
print(paste0("El tamano de la secuencia de Peru virus es: ", s_peru))
print(paste0("El tamano de la secuencia de Reino Unido virus es: ", s_uk))
print(paste0("El tamano de la secuencia de Russia virus es: ", s_russia))
print(paste0("El tamano de la secuencia de Suiza virus es: ", s_suiza))
print(paste0("El tamano de la secuencia de Uruguay virus es: ", s_uruguay))
print(paste0("El tamano de la secuencia de USA virus es: ", s_usa))

# grafica de comparacion de base de nucletotidos
f_aus <- alphabetFrequency(aus,baseOnly=TRUE,as.prob=TRUE)
f_benin <- alphabetFrequency(benin,baseOnly=TRUE,as.prob=TRUE)
f_brazil <- alphabetFrequency(brazil,baseOnly=TRUE,as.prob=TRUE)
f_canada <- alphabetFrequency(canada,baseOnly=TRUE,as.prob=TRUE)
f_chile <- alphabetFrequency(chile,baseOnly=TRUE,as.prob=TRUE)
f_china <- alphabetFrequency(china,baseOnly=TRUE,as.prob=TRUE)
f_egipto <- alphabetFrequency(egipto,baseOnly=TRUE,as.prob=TRUE)
f_francia <- alphabetFrequency(francia,baseOnly=TRUE,as.prob=TRUE)
f_hong <- alphabetFrequency(hong,baseOnly=TRUE,as.prob=TRUE)
f_indonesia <- alphabetFrequency(indonesia,baseOnly=TRUE,as.prob=TRUE)
f_kenya <- alphabetFrequency(kenya,baseOnly=TRUE,as.prob=TRUE)
f_mexico <- alphabetFrequency(mexico,baseOnly=TRUE,as.prob=TRUE)
f_nepal <- alphabetFrequency(nepal,baseOnly=TRUE,as.prob=TRUE)
f_newz <- alphabetFrequency(newz,baseOnly=TRUE,as.prob=TRUE)
f_peru <- alphabetFrequency(peru,baseOnly=TRUE,as.prob=TRUE)
f_uk <- alphabetFrequency(uk,baseOnly=TRUE,as.prob=TRUE)
f_russia <- alphabetFrequency(russia,baseOnly=TRUE,as.prob=TRUE)
f_suiza <- alphabetFrequency(suiza,baseOnly=TRUE,as.prob=TRUE)
f_uruguay <- alphabetFrequency(uruguay,baseOnly=TRUE,as.prob=TRUE)
f_usa <- alphabetFrequency(usa,baseOnly=TRUE,as.prob=TRUE)


f=cbind(f_aus[1,], f_benin[1,], f_brazil[1,], f_canada[1,], f_chile[1,], f_china[1,], f_egipto[1,], f_francia[1,], f_hong[1,], f_indonesia[1,], f_kenya[1,], f_mexico[1,], f_nepal[1,], f_newz[1,], f_peru[1,], f_uk[1,], f_russia[1,], f_suiza[1,], f_uruguay[1,], f_usa[1,])
rownames(f)=c("ADENINA", "CITOSINA", "GUANINA", "TIMINA")
barplot(f, main="Comparacion de bases de Secuencias",
        xlab="Paises", col=c("darkblue","red","green","yellow", "pink"),
        names.arg=c("AUS","BJ","BZL","CNA","CHI", "CN", "EGI", "FRN", "HKONG", "IND", "KEN", "MX", "NEP", "NZLND", "PER", "UK", "RUS", "SZA", "URU", "USA"))


# ARBOL FILOGENETICO

# analisis de correspondencia
paises <- c("MW913360", "MT653071", "MT925972", "MW309425", "MW672138", "NC_045512", "MW916315", "HG993784", "MW856793", "MZ026853", "MW931663", "MW884219", "MW739929", "MT706050", "MW938089", "OD910722", "MW741552", "FR990848", "MW988204", "MZ021680")
paisesseq <- read.GenBank(paises)
write.dna(paisesseq, file="paisesseq.fasta", format = "fasta")
paisesseq_na <- readDNAStringSet("/Users/Denisse/paisesseq.fasta", format = "fasta")
x <- readAAStringSet("/Users/Denisse/paisesseq.fasta", format = "fasta")
alignedseq <- AlignSeqs(paisesseq_na) #na = no esta alineado
BrowseSeqs(alignedseq)
saveXStringSet(alignedseq, "paises_serialized", dirpath="/Users/Denisse/", save.dups=FALSE, verbose=TRUE)
writeXStringSet(alignedseq, file="alignedseq.fasta", format="fasta")
alignedseq_val <- read.alignment("alignedseq.fasta", format="fasta") #este te lo da como objeto alignment
va = readDNAStringSet("/Users/Denisse/alignedseq.fasta", format = "fasta")
distancia <- dist.alignment(alignedseq_val) 
df <- scale(as.matrix(distancia))
heatmap(df, col=paste("gray",1:99,sep=""))



# arbol filogenetico
paises_tree <- nj(distancia)
class(paises_tree)
paises_tree <- ladderize(paises_tree)

plot(paises_tree, cex=0.6)
title("Arbol filogenetico de SARS COVID-2 (20 paises)")


