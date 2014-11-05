## Updating pressures and resilience

### Introduction 

Before updating the actual pressure and resilience matrices, there are elements to consider. 

The Ocean Health Index framework calculates pressures by first grouping them into six categories: pollution, habitat destruction, fishing pressure, species pollution, climate change, and social pressures. The reason behind these categories was largely due to data availability at the global level and was designed to minimize sampling bias. For example, we found that there were more pollution data available than habitat destruction data, but just because people have monitored pollution more does not mean it is a larger pressure than habitat destruction. 

Goals often interact with each other through pressures. The pressure created by one goal affects a second goal, and may not affect the first. For example, raising fish in the mariculture goal can cause genetic escapes, which is a pressure (the *sp_genetic* layer). This pressure affects only the wild-caught fisheries and species sub-goals, but does not affect mariculture itself. 

### Explore local pressures

Begin by exploring the pressures included in the global pressures matrix (`pressures_matrix.csv`). Are there any pressures that should be excluded? 

Next, brainstorm pressures specific to your region that are not captured in the `pressures_matrix.csv`. Which pressures stand out in the region? Pressures included in the `pressures_matrix.csv` are ultimately determined by available data, and there are likely pressures important to your region that are not captured in the pressures matrix.  

Like the global study, what you are able to include in your regional study will also depend on data availability. Remember that each column in `pressures_matrix.csv` is a data layer, which requires data for each region in your study area. 

#### Update pressures data layers

Most likely, many pressures indicated in the global pressures matrix will also apply to your region, but better, local data will be available. In this case, you will update the pressure data layer as you would with any other data layer. See the 'modifying and creating data layers' section below for how to do this. 

### Determine how the pressure affects goals

Next, you will need to map how the pressure affects which goals, and determine the appropriate weighting. Further, you will need to decide in which pressure category the new pressure belongs. Most likely, the new pressure will fit into one of the existing categories. However, depending on the type of pressures in your study area, it is possible that a new pressure category could be created.  

These decisions should depend on previous scientific studies, even if they do not occur in your study area. Experts on the topic should also be included in the conversation.

      
### Explore local resilience 

Explore potential resilience layers

Resilience can be a tricky thing. 

Determi

5. Are there new resilience measures to include? 
Identifying which resilience measures matter will be based on the decisions made with the  pressures matrix, starting with those with a ranking of 2 or 3. 

    + identify responsive resilience measures
      - any pressure layer with a weight of 2 or 3 needs a complementary resilience layer
    + categorize any new resilience layers
      - example: regulations, ecological, etc


Any new resilience measure must be associated with a pressure layer. This is because resilience in the Ocean Health Index framework acts to reduce pressures in each region. Therefore, resilience measures must not only be directly or indirectly relevant to ocean health, but must be in response to a pressure layer affecting a goal.

Resilience layers are intended to describe the measures that set rules and regulations to address ecological pressures, and are measured as laws and other institutional measures related to a specific goal. Data to address these resilience  components should fall into one of three categories: 
1. Existence of rules and regulations: Are there institutional structures in place to  appropriately address the ecological pressure? 
2. Implementation and Enforcement: Have these structures been appropriately  implemented and are there enforcement mechanisms in place? 
3. Effectiveness and Compliance: How effective has the structure been at mitigating  these pressures and is their effective compliance with these structures?      

Social measures may not be strictly marine related, but can judge how well-governed areas are and therefore how well a region may be able to respond to or prevent environmental challenges.  
