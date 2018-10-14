#Make user pairs
user_pairs <- data.frame(UserID1=as.character(),UserID2=as.character(),stringsAsFactors = FALSE)

for(i in 1:(nrow(user_sample_ids)-1)){
  for(j in (i+1):nrow(user_sample_ids)){
    
    user_pairs <- rbind(user_pairs,data.frame("UserID1"=user_sample_ids[i,'UserID'],
                                              "UserID2"=user_sample_ids[j,'UserID'],
                                               stringsAsFactors = FALSE));
  }
}

user_pairs <- data.frame(lapply(user_pairs, as.character),stringsAsFactors = FALSE)
user_pairs$friendship_feature <- double(length = nrow(user_pairs))
user_pairs$list_of_common_gps <- vector(mode = "list",length = nrow(user_pairs))
user_pairs$list_of_common_location_names <- vector(mode="list",length = nrow(user_pairs))
user_pairs$numberOfCommonPlaces <- as.integer(0,length(nrow(user_pairs)))
user_pairs$fractionOfCommonPlaces <- as.double(0,length(nrow(user_pairs)))
user_pairs$list_of_common_gps_score <- vector(mode="list",length = nrow(user_pairs))
user_pairs$list_of_common_loc_names_score <- vector(mode="list",length = nrow(user_pairs))
user_pairs$list_of_top_ten_loc_scores <- vector(mode="list",length = nrow(user_pairs))

