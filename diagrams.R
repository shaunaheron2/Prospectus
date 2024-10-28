library(fontawesome)
library(usethis)
library(DiagrammeR)

# Create a flowchart using DiagrammeR
graph <- DiagrammeR::grViz(
  `digraph flowchart 
    graph [layout = dot, rankdir = TB]

    # Define node styles
    node [shape = box, style = filled, color = lightblue, fontsize = 10]

    # Raw Data Section
    raw_data [label = 'Raw Data', shape = box, color = lightblue]
    client_intake [label = 'Client Intake Information']
    mental_health [label = 'Mental Health Data']
    service_history [label = 'Service History']
    other_info [label = 'Other Information']

    # Data Representation Section
    data_representation [label = 'Data Representation (Over Time)', color = lightgreen]
    weekly_data [label = 'Weekly/Monthly Data: Workload, Changes in Risk, Session Notes']

    # Feature Store and Modeling Section
    modeling [label = 'Feature Store and Modeling', color = lightcoral]
    static_features [label = 'Static Features (Client Demographics)']
    time_variant_features [label = 'Time-Variant Features (Recent Workload, Crises)']

    # Predicting Weekly Hours Section
    predicting [label = 'Predicting Weekly Hours Needed per Client', color = lightsalmon]
    workload_categories [label = 'Workload Categories: High, Mid, Low']

    # Dashboard Section
    dashboard [label = 'Workload Dashboard (Practical Application)', color = lightyellow]
    predicted_hours [label = 'Predicted Hours Required\nfor Each Client']
    risk_factors [label = 'Risk Factors\n(Client Needing Extra Support)']
    workload_distribution [label = 'Total Workload\nDistribution']

    # Define edges to connect nodes
    raw_data -> client_intake
    raw_data -> mental_health
    raw_data -> service_history
    raw_data -> other_info

    {rank = same; client_intake; mental_health; service_history; other_info}
    client_intake -> data_representation
    mental_health -> data_representation
    service_history -> data_representation
    other_info -> data_representation

    data_representation -> weekly_data
    weekly_data -> modeling

    modeling -> static_features
    modeling -> time_variant_features

    static_features -> predicting
    time_variant_features -> predicting

    predicting -> workload_categories
    workload_categories -> dashboard

    dashboard -> predicted_hours
    dashboard -> risk_factors
    dashboard -> workload_distribution`

)

# Render the flowchart
graph