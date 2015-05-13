### **HABITATS**
#### Practical Considerations

#### *Ideal Approach*

Ideally, information on the extent and condition of every single habitat type would be available. The reference point for habitat-based goals will likely be temporal; this means that historic data are needed such that current habitat and value data can be compared to historic data (or a proportion of historic data).

#### Recommendations for Regional Assessments

If comprehensive species biodiversity data exist, these data can be used alone and the sub-goal of habitats can be removed (so that the entire goal is species biodiversity). However, the inventory of marine biodiversity may not often be sufficiently complete to permit that.

#### Global Data Approach

Hi Julie:
I'm not sure if this is an adequate answer, but we can start discussing this!

#### habitat extent: Area of each habitat in each reporting region
#### habitat health/condition: this is the condition of the habitat relative to a reference point.  The ideal situation is if there is historical data that can be compared to the present habitat.  

Some examples:
For mangroves, we divided the current area (2005 data) by the reference area (1980 data).

Coral health is based on the % living cover on a reef.  Ideally, historical data is available that can provide a reference point for % living cover.  For our reference point, we used the mean predicted values for a country from 1985-1987.  When this data was not available for a country, we used the value of neighboring countries.  (There was also some analyses to control for the fact that the % live coral cover naturally varies over time, hence the use of "predicted values").

For soft-bottom habitat, we estimated status based on the intensity of trawl fishing as a proxy (pages 51 and 52 of SOM 2012).

#### habitat trend: Change in health/condition over time
Ideally, there will be enough years of data to directly calculate the recent change in health of the habitat (i.e., using a linear model to calculate trend).  For example, for sea ice, we fit a linear model to a metric of sea ice cover for data from 2006-2011 (after some smoothing to account for natural variation).

This isn't always the case, and proxies or estimates might need to be used.  For example, due to spotty salt marsh data we created trend categories of increasing (0.5), stable (0), and decreasing (-0.5) based on available data.

#### Questions to Consider

I think the approach is going to largely depend on the type of data they
have (our approach varies for each habitat because the data is so
variable).

Do they have maps, for example, that show current habitat distributions and
maps that show historical habitat distributions?  If so, they could extract
that data for each of their regions to get a current and reference area.
Or, they may have access to summarized habitat data that exists in tables
for their regions (or, at smaller scales such as estuary that they can
summarize per region)?

Antarctica had sea ice habitat data, there is a script that wallks through
downloading and analyzing the data.  But, I'm not sure how helpful that
will be.

For Fiji, the only habitat variable that we modified was coral health.  In
this case, we had better regional data to estimate coral health (even
though the final value we ended up getting was the same).  That was a
fairly specialized analysis
