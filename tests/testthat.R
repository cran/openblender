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
# DATASET: 'BBC News Business headlines'
parameters <- list(
  token="5d07bed33e59b27a93e43be804ij5qcy5ss9jHsoBpwpxsvLZqyrcU",
  id_user="5d07bed33e59b27a93e43be8",
  id_dataset="5d82477f951629088f08cef5",
  sample_size=200
)
df <- openblender::call(action, parameters)$sample
head(df)

