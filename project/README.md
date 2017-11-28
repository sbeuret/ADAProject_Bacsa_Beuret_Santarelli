# Title
Improving electoral fairness in Switzerland

# Abstract
The cantonal borders in Switzerland have mostly stayed fixed since the 19th century, and in some cases, even the Middle-Ages. Therefore, they sometimes 
do not take into account the evolutions of the Swiss society that occured in the last 150 years. Furthermore, since the number of seats the parlement is 
limited, some parties will never get enough votes to be representated, therefore part of the Swiss population is de facto excluded from parlementary debates.
In this study, we intend to explore the Swiss OpenData dataset's electoral and economical data. We would then like to clusters the different 'Communes' into 
new Cantons. These new Cantons would then exibit the best political representation of Switzerland. We would like to study the influence of the political 
partitioning on the parlement's composition. To this effect, we will tweak the different parameters of our model to study its effect. We can also verify 
the quality of the current partition.

# Research questions
- Can we construct an optimal partition for the Council of States ?
- Can we construct an optimal partition for the National Council ?
- Is it possible to optmize both at the same time ?
- Can geography be taken into account in order to keep coherent borders ?
- Can social factors be taken into account ?
- Can the current representation be rated as fair ?
- Can we do the opposite and find the least fair partitioning ?

# Dataset
Swiss open dataset (opendata.swiss) :
- Election au Conseil National (suffrages des partis et forces des partis depuis 1975 : districts et communes)
- Votations populaires (résultats au niveau des communes depuis 1981)
- Population résidente permanente et non permanente selon les niveaux géographiques institutionnels, le sexe, la nationalité (catégorie), le lieu de naissance et la classe d'âge
- swissBoundaries 3D

# A list of internal milestones up until project milestone 2
- Download datasets
- Clean (if needed)
- Map data to Swiss map
- Build model for both elections
- Find an optimization algorithm
- Sweep hyperparameters
	
# Questions for TAs
- What kind of problems can we expect ?
- Do you happen to know any algorithms for geographical clustering ? 

# Milestone 2
## Pipepline
<!--- - have a pipeline in place, fully documented in a notebook, and 
- show us that you’ve advanced with your understanding of the project goals by updating its README description.
- That your plan for analysis and communication is now reasonable and sound, potentially discussing alternatives to your choices that you considered but dropped.
When describing the data, in particular, you should show (non-exhaustive list):--->

* Loading and merging the data, handling the size of the data 
* Cleaning the data
* Visualisation
* Spectral clustering
* Genectic algorithm

## Description of the data used
<!--- - intimately acquaint yourself with the data,
- That you can handle the data in its size.
- That you understand what’s into the data (formats, distributions).
- That you considered ways to enrich, filter, transform the data according to your needs.
-->
For the first dataset mentionned above, the  opendata.swiss  website redirected us to this [link](https://www.pxweb.bfs.admin.ch/pxweb/fr/px-x-1702020000_105/-/px-x-1702020000_105.px) to download the dataset. But since the tool provided has a bounded number of downloadable cells, the dataset was downloaded into two Excel documents.
These Excel files were loaded and merged in a single dataframe. We recovered the results of the 2015 Swiss National Council election (Election au Conseil National) for each municipality (commune):
* the percentage of votes (#votes registered in the municipalities for the party/#votes registered in the municipalities) 
* the corresponding party
* the corresponding municipalities

<!---  dans le code bout de code avec print des partis, peut etre un index avec le nom et l'acronyme correspondant des parties -->
Since the milestone 1, we added a dataset named "Elections au Conseil national (électeurs inscrits, électeurs et types de bulletins de vote depuis 1975)" [[link](https://www.pxweb.bfs.admin.ch/pxweb/fr/px-x-1702020000_101/-/px-x-1702020000_101.px)] which includes complementary data linked to the first dataset. We are interested in the number of registered voters with a valid ballot paper per municipality in order to weight the votes of merged municipalities. 


We also scrapped another [TopoJson file](http://bl.ocks.org/herrstucki/raw/4327678/aa6f466b7600651bd57838ca70b72ce07e79165d/ch.json) of the municipalities borders from this [link](http://bl.ocks.org/herrstucki/9204795) using Postman. Then, we recovered the adjacent municipalities using the function *neighbors* from the JavaScript module *topojson* [documentation](https://github.com/topojson/topojson)] and saved the names of municipalities and their neighbors in a CSV file named *graph_communes.csv*. The dataframe of adjacent municipalities will be used later in our project to create cantons from connected municipalities. 

We used another TopoJson to visualize the municipalities because we realized that the previous TopoJson uses the CH1903 coordinate system (cartesian coordinate system centered on Switzerland) instead of the WGS84 used as default in TopoJsons (spherical world coordinates) and therefore it was not possible to use *folium* to implement a choropleth map of the municipalities.In order to display the first dataset and our future results, we downloaded the topographical borders of the Swiss municipalities in a TopoJson file from this [link](https://github.com/selinerdominik/swiss_zoom). Combined with the election data, we can display the election results for each party on a choropleth map (see map below).


## Cleaning process, preprocess
<!--- - preprocess it 
- That you understand what’s into the data ( missing values, correlations, etc.).
- That you considered ways to enrich, filter, transform the data according to your needs.
- parti socialiste autonomiste qui n'existe que dans le Jura Bernois
- topojson of communes from 2013, cission et fusion of 150 municipalities. --->

In the 2105 Swiss National Council election results (2015SNCER) dataframe, the percentage per party is sometimes marked as '...'. This mark corresponds to parties that used to exist, changed their name or merged with others. For example the Liberal Party of Switzerland merged with the Radical Democratic Party to form the FDP (The Liberals). The database keeps track of all  parties over the years. Therefore we replaced this mark by 0%. The missing values are marked in the same way for the 2015 Swiss National Council election voters (2015SNCEV) dataframe, and are dealt with by replacing the missing number of voters by 0 for the reason by now are obvious. 

The results for the municipalities that shared a common ballot box are registered among one of them, the other one have their number of votes set to zero. Since there is no mapping of the municipilities with the shared ballots, we could not copy their results and we kept the municipalities as such. They will still be clustered using only their geographical features.

We kept the parties that are unique to certain municipalities/cantons, such as the LEGA party that is only present in Ticino. 
Some of these parties however have zeros votes for all municipalities, therefore we decided to remove them from the dataset.
Parties referred to as "others" in the dataset are taken into account in our project.

We realized that the municipalities listed in the adjacent municipalities dataframe recovered from this [link](http://bl.ocks.org/herrstucki/9204795) which redirect us to this [link](https://github.com/interactivethings/swiss-maps) dated back to 2013. It is the same for the TopoJson used for the visualisation. Between 2013 and 2015, many municipalities were merged. The dataframe of the adjacent municipalites will be updated as such.

## Visualisation

In order to visualize the entirety of our data, we can map the results of a specific party to a choropleth map.

## Spectral Clustering
<!--- - complete all the necessary descriptive statistics tasks
- That you have updated your plan in a reasonable way, reflecting your improved knowledge after data acquaintance. In particular, discuss how your data suits your project needs and discuss the methods you’re going to use, giving their essential mathematical details in the notebook.--->

Another idea would be to use spectral clustering for feature extraction (the main steps are based on the courseware from the EPFL course EE-558 : A Network Tour of Data Science). This feature extraction is done on a graph with each municipality corresponding to a node and each edge being the political "distance" between each municipality. Once the graph has been sparsified, we can compute the normalized Laplacian and use its eigenvectors as features to extract information on the political topology of Switzerland. With these eigenvectors used as features, we can cluster our municipalities into different political classes. Surprisingly, with only three features, we can see on the choropleth map that it is sufficient to accuratly represent the political climat of Switzerland without any prior geographical information, such as :
- The western Cantons such as Geneva, Vaud and Neuchâtel all have a similar political opinion (namely progressive).
- Many Cantons are already quite politically uniform, such as Jura, Fribourg, Ticino, Glaris, etc...
- For the urban Swiss-German Cantons such as Zürich, Aargau, Thurgau, etc..., there is a strong political divide between the progressive city centers and the conservative countryside.
- The case of the Grison Canton is unique to Switzerland as it is highly heterogenous. This can partially be explained by the fact that the different valleys that comprise the Grisons have lived separatly for most of history.

## Genetic algorithm

In order to be able to increase the electoral fairness, we need an algorithm to optimize the distribution according to the representativity (the norm of the difference between the parliament and the popular vote). We decided to implement a genetic algorithm, since it will be hard to find a continuous method like gradient decent. The basic principle is to create a list of parent distributions (each municipality is associated with a canton). We generated from these parents a certain number of "child" distributions (created by randomly selecting for each municipality one of the cantons from both parents). We also mutated the children by randomly changing one of the cantons to another canton. We computed the loss for each child and selected the N best distributions to be the parents of the next generation. Therefore the algorithm converges. This is mearly a first tentative, but it converges rapidly, thus parameters must be tweaked in order to get better results. We cannot for now properly display the results using folium.