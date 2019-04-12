### 3. Gender assortativity

A network is said to be assortative if nodes tend to be connected to "similiar" nodes, where similarity is based on some property of the node (e.g., age, gender, degree, etc.). In this problem you'll look at gender assortativity in the social networks of several universities as collected in the Facebook100 dataset studied [in this paper](https://www.sciencedirect.com/science/article/pii/S0378437111009186). (A link to this dataset, which is not currently public, will be provided on Piazza.)

Each of these networks contains (undirected) links between people who were friends on Facebook in a 2005 snapshot of the network along with (anonymized) demographic information about each person. Here we will be interested in gender, which is coded as 1 = male, 2 = female, and 0 = unknown.

a) Loop over each network in this dataset and read in information about the nodes and edges. For each node, compute the fraction of its neighbors that are known to be female rounded to the nearest 10 percentage points (call this p<sub>f</sub>) and whether that node is labeled as female. Then bin nodes by p<sub>f</sub> and count the fraction of nodes in each bin that are labeled as female and the number of nodes in each bin. 

b) Make a calibration plot where each panel is a school, the x-axis is p<sub>f</sub> and the y axis is the fraction that are actually labeled as female. Add a dashed diagonal line to the plots. Comment on any interesting patterns or differences between schools.

b) Finally, you'll use the gender of a node's neighbors to try to predict the node's gender with a simple majority vote. Loop over each network. For each node in the network, count the number of males, females, and unknowns among its neighbors. Make a prediction that the node's gender is the most commonly occuring gender among its neighbors, breaking ties randomly. Then compare these predictions to each node's actual gender and compute the accuracy of the classifier for the network.

d) Make a plot which shows the name of each school on the y-axis and the accuracy of the classifier on the x-axis, with a dashed vertical line at accuracy = 0.50 and schools sorted by the accuracy of the classifier. Include standard errors on the accuracies. Comment on the schools for which your classifier has comparatively low / high accuracy.

e) How would you expect the results of parts b) and d) to differ for a network that encodes dating relationships where the majority of individuals are heterosexual instead of a network that encodes friendships?

*Do not* use igraph or any network packages to complete this problem. Instead create one dataframe for the nodes of each network and one dataframe for the edges of that network, and do all calculations by manipulating these dataframes.