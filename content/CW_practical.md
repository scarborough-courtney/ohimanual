#### Practical Considerations

#### Ideal Approach

Ideally, data would be available and combined from many different categories of marine pollution to best capture the factors that can cause waters to become unsuitable for recreation or other purposes. The type of reference point used will depend on the data available; a functional relationship would be best for setting limits to uses.

#### Recommendations for regional assessments

We recommend that pollutants are combined with a geometric mean, as done in the assessments presented, as this guarantees that if any one of the components scores very poorly, the higher scores from other components can’t make up for it.

Due to data constraints, the models described below mostly used information on pollutant inputs from point sources. If in-situ measurements of water and biological uptake from organisms are available, these types of information should be preferred. Particularly, information on eutrophication anomalies, anoxic regions and toxic blooms, would be preferable to the nutrient inputs proxy used in previous assessments.

We were not able to assess specific toxic chemicals at the global scale; however regional case studies often will have data available for the quantities and toxicity of a range of chemicals put into watersheds and coastal waters. In addition, where possible and relevant, we recommend including additional component that could not be covered in the models presented here due to data constraints, such as altered sedimentation/turbidity.

#### Global Data Approach


<!---From #145--->
One approach:
instead of using population trend as proxy for trash trend, use trash trend when you have it, otherwise population trend

<!---From issue #306--->

Using the new data from 5 gyres on plastic pollution in the worlds oceans, I've created initial pressure layers using our 'decision tree'. I'll walk through them here and would like any feedback.

The data came to us in two formats - count of plastics (g) per km2 and weight of plastics per km2. Each of these types of data has 4 different size classes. You can see all eight of these data types from the figures below (from the [paper](http://journals.plos.org/plosone/article?id=10.1371/journal.pone.0111913)). Native resolution is ~0.2 x 0.2 degrees.

**Count density across 4 size classes**
![screen shot 2015-04-21 at 5 24 25 pm](https://cloud.githubusercontent.com/assets/6842510/7265234/58e8ecbc-e84b-11e4-96f2-ddc91b7f7dbd.png)

**Weight density across all 4 size classes**
![screen shot 2015-04-21 at 5 25 20 pm](https://cloud.githubusercontent.com/assets/6842510/7265242/6e1aa65c-e84b-11e4-917e-a5de4d55c9f8.png)

To turn these data into layers for OHI, I **summed across all four size classes for both weight and count**, then ran them through the 'decision tree' (#389).
