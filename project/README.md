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
	- Population résidente permanente et non permanente selon les niveaux géographiques institutionnels, 
		le sexe, la nationalité (catégorie), le lieu de naissance et la classe d'âge
	- swissBoundaries 3D

# A list of internal milestones up until project milestone 2
	- Download datasets
	- Clean (if needed)
	- Map data to Swiss map
	- Build model for both elections
	- Find an optimization algorithm
	- Sweep hyperparameters
	
# Questions for TAs
What kind of problems can we expect ?
Do you happen to know any algorythms for geographical clustering ? 