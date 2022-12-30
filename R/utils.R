
# Remove repeated rows for the same player id
# -----------------------------
keep_only_totals <- function(
  df,
  dupes
) {
  
    df %>% 
      filter(
        !(player_id %in% dupes$player_id) |
        team == 'TOT'
      )
  
}
