# importing data set
df <- read.csv("https://raw.githubusercontent.com/gungorMetehan/csgo-cs2/refs/heads/main/data-sets/majors_p_nat.csv", header = T, sep = ",")
print(df)

# grouping (quarterfinalists)
df_q <- df %>%
  group_by(country) %>%
  summarize(total = sum(quarter)) %>%
  arrange(desc(total))
print(df_q)

# grouping (semifinalists)
df_s <- df %>%
  group_by(country) %>%
  summarize(total = sum(semi)) %>%
  arrange(desc(total))
print(df_s)

# grouping (finalists)
df_f <- df %>%
  group_by(country) %>%
  summarize(total = sum(final)) %>%
  arrange(desc(total))
print(df_f)

# grouping (champions)
df_w <- df %>%
  group_by(country) %>%
  summarize(total = sum(won)) %>%
  arrange(desc(total))
print(df_w)

# subsetting (an example)
df[df$country == "Turkiye", ]