insert_row <- function(existing_df, newrow, r) {
  existing_df[seq(r,nrow(existing_df)+1),] <- existing_df[seq(r,nrow(existing_df)+1),]
  existing_df[r,] <- newrow
  rownames(existing_df) <- c(seq(1:nrow(existing_df)))
  existing_df
}