# # TESTING #
# ############################################################
# ######################Create Dataset########################
# df <- read.csv(file = "climas2018.csv", header = TRUE, sep = ",")
# df <- as.data.frame(list("FEATURE_1" = c("VALUE_1", "VALUE_2"), "FEATURE_2" = c("VALUE_3", "VALUE_4")))
# action <- "API_createDataset"
# parameters <- list(
#   token = "1AKnDhP09wa2yGRia5z1SGTxAUQAiV",
#   id_user = "5d07bed33e59b27a93e43be8",
#   name = "df_from_R_object",
#   descriptipon = "testing R library for OpenBlender",
#   visibility = "public",
#   tags = list("tag1", "tag2"),
#   insert_observations = "off",
#   dataframe = df
# )
# new_df <- openblender::call(action, parameters)
# new_df$id_dataset
# ############################################################
# #####################Insert observations####################
# df <- read.csv(file = "climas2018.csv", header = TRUE, sep = ",")
# df
# action <- "API_insertObservations"
# parameters <- list(
#   #oblender = 1,
#   token = "1AKnDhP09wa2yGRia5z1SGTxAUQAiV",
#   id_user = "5d07bed33e59b27a93e43be8",
#   id_dataset = new_df$id_dataset,
#   notification = "on",
#   observations = df
# )
# response <- openblender::call(action, parameters)
# response
# ############################################################
# #####################Obtain observations####################
action <- "API_getObservationsFromDataset"
parameters <- list(
  oblender = 1,
  blends = list(list(id_blend = "5d976070f86334ee1cfc14f0", blend_type = "ts", restriction = "None", blend_class = "closest_observation")),
  token = "67dTvR8KVRM044s9ldE94IgFc5HF3q",
  id_user = "5d48b439275b3f05db0feee2",
  id_dataset = "5d533b864b81b70af19bdc4c"
)

response <- openblender::call(action, parameters)
dfr <- response$sample
head(dfr)
nrow(dfr)
# dfr

