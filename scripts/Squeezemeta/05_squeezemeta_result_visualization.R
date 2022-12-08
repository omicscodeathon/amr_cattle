#Loading library SQMtools
library('SQMtools')

#setting working directory for our code.
setwd('/home/kauther/my_shared_data_folder/amrcattle/github/amr_cattle/output/metagenome-analysis-results/Kenya')



#Loading Kenya squezemeta results into SQM
#adding engine option is a faster option to load your data if your project is large.
Kenya = loadSQM('/home/kauther/my_shared_data_folder/amrcattle/Co_assem_analysis/Kenya', engine = 'data.table')

#Generating taxonomy plot at phlum level for Kenya
plotTaxonomy(Kenya, rank='phylum', count='percent')

#Generating taxonomy plot at family level for Kenya
plotTaxonomy(Kenya, rank='family', count='percent')

#Generating taxonomy plot at species level for Kenya
plotTaxonomy(Kenya, rank='species', count='percent')

#Generating Kenya's KEGG functional annotation plot.
plotFunctions(Kenya, fun_level = 'KEGG', count = 'tpm', N = 15)
Kenya



#Loading Tanzanian squezemeta results into SQM
Tanzania = loadSQM('/home/kauther/my_shared_data_folder/amrcattle/Co_assem_analysis/Tanzania', engine = 'data.table')

#Generating taxonomy plot at phlum level for Tanzania
plotTaxonomy(Tanzania, rank='phylum', count='percent')

#Generating taxonomy plot at family level for Tanzania
plotTaxonomy(Tanzania, rank='family', count='percent')

#Generating taxonomy plot at species level for Tanzania
plotTaxonomy(Tanzania, rank='species', count='percent')

#Generating Tanzania's KEGG functional annotation plot.
plotFunctions(Tanzania, fun_level = 'KEGG', count = 'tpm', N = 15)



#Loading Ugandan squezemeta results into SQM
Uganda = loadSQMlite("/home/kauther/my_shared_data_folder/amrcattle/metagenome_analysis_results/uganda/combined_uganda")

#Generating taxonomy plot at phlum level for Uganda
plotTaxonomy(Uganda, rank='phylum', count='percent')

#Generating taxonomy plot at family level for Uganda
plotTaxonomy(Uganda, rank='family', count='percent')

#Generating taxonomy plot at species level for Tanzania
plotTaxonomy(Uganda, rank='species', count='percent')

#Generating Tanzania's KEGG functional annotation plot
plotFunctions(Uganda, fun_level = 'KEGG', count = 'tpm', N = 15)

