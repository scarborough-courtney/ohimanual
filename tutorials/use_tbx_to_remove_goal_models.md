
## Removing goals
If a goal is not relevant in your region, it is possible to remove the goal completely from the calculation. There are four places where you will need to remove the reference to this goal. Failing to delete all referenced layers after the goal is deleted will result in errors.

1. `functions.r`
2. `goals.csv`
3. `pressures_matrix.csv`
4. `resilience_matrix.csv`

![](./fig/remove_goal.png)

**Example: Removing carbon storage (CS) goal**

To completely remove the carbon storage goal from Index calculations, you will do the following. 

1) Remove the carbon storage (CS) goal model from `functions.r`. Delete the highlighted text in the figure below that references the CS layers and calculates CS goal status, trend, and scores.

![](./fig/functions_delete.png)

2) Remove the CS row from `goals.csv`. Delete the highlighted row in the figure below that contains the CS goal.

![](./fig/goals_delete.png)

3) Remove all CS rows from `pressures_matrix.csv`. Delete the highlighted rows in the figure below that contain CS pressures.

![](./fig/delete_pressures.png)

4) Remove all CS rows from `resilience_matrix.csv`. Delete the highlighted rows in the figure below that contain CS resilience.

![](./fig/delete_resilience.png)
