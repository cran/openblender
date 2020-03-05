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
# ANCHOR: 'Donald Trump Tweet'
# BLENDS: 'ABC News  International Business headlines'

action <- "API_getObservationsFromDataset"
parameters <- list(
  oblender=1,
  token="5d48b439275b3f05db0feee2PfZabUszloyThHiTpqqzwmOXDkzyJ9",
  id_user="5d48b439275b3f05db0feee2",
  id_dataset="5e0847a5647910d75ee482da",
  blends = list(list(id_blend = "5e083e53ede39ccb825fc4ed",blend_class = "closest_observation",restriction = "None",blend_type = "ts",drop_features = list()))
)
df <- openblender::call(action, parameters)$sample
head(df)



# #prueba para obtener un text vectorizer
# action <- "API_getDataWithVectorizer"
# parameters <- list(
#   oblender=1,
#   token="5d48b439275b3f05db0feee2PfZabUszloyThHiTpqqzwmOXDkzyJ9",
#   id_user="5d48b439275b3f05db0feee2",
#   id_textVectorizer="5e4ac5b6a239d58424368f72"
# )
# df <- openblender::call(action, parameters)$sample
# head(df)
#
#
# # prueba pull data con blend y text vectorizer
# action <- "API_getObservationsFromDataset"
#
# # ANCHOR: 'Trump Approval Rate'
# # BLENDS: 'Corn Price', 'ABC and Fox TV'
#
# parameters <- list(
#   oblender=1,
#   token="5d48b439275b3f05db0feee2PfZabUszloyThHiTpqqzwmOXDkzyJ9",
#   id_user="5d48b439275b3f05db0feee2",
#   id_dataset="5e1fd587437dc891c126fa6b",
#   blends = list(list(id_blend = "5d976070f86334ee1cfc14f0",restriction = "None",blend_type = "ts",drop_features = list()),list(id_blend = "5e4ac5b6a239d58424368f72",restriction = "None",blend_type = "text_ts",specifications = list(time_interval_size = 43200,text_filter_search = list())))
# )
#
#
# df <- openblender::call(action, parameters)$sample
# head(df)
