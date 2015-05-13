##Transforming Your Data

<!---Notes from Github issue 389. Add more--->

#### Global Data Approach

I think we should base our decision on whether we consider it more appropriate to decide the reference point based on the data distribution of all data points, be they observed or interpolated, or whether we think we should only consider the observed data. If the interpolation covers large areas, and these get assigned values that aren't very frequent in the observed data, then the two distributions will be very different, and what value is in the 99.99th percentile is different too.

In theory, one would favor deciding the reference point based on as many observations as possible (i.e. interpolate first, then obtain the percentile). In practice, if we think that large interpolated areas are very unreliable, we might prefer to use real observations only (i.e. percentile first, then interpolate).

<!---Note--->

#### Normalization

Data normalization; example with you rescaling to max, or to higher than max
