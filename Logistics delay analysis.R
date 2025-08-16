install.packages("dplyr")
library("dplyr")
df<-read.csv("C:\Users\LENOVO\OneDrive\Desktop\cv projects\Logistics  Delay analysis\delhivery.csv")
View(df)
# .Create new column for weekday/weekend
#1.compare trip_duration_hours by day_type
df$day_type <- ifelse(weekdays(as.Date(df$trip_creation_time)) %in% c("Saturday", "Sunday"), 
                      "Weekend", "Weekday")
t_result<-t.test(trip_duration_hours ~ day_type, data = df)
if (t_result$p.value < 0.05) {
  cat("Reject H0: There is a significant difference in trip duration between weekdays and weekends.\n\n")
} else {
  cat("Fail to Reject H0: No significant difference in trip duration between weekdays and weekends.\n\n")
}



install.packages("BSDA")
library(BSDA)
#2.Is the average trip duration significantly greater than 5 hours?
z_result<-z.test(df$trip_duration_hours, mu = 5, sigma.x = sd(df$trip_duration_hours), alternative = "greater")
if (z_result$p.value < 0.05) {
  cat("Reject H0: The average trip duration is significantly greater than 5 hours.\n\n")
} else {
  cat("Fail to Reject H0: The average trip duration is not significantly greater than 5 hours.\n\n")
}


#3.F-test between segment_actual_time and segment_osrm_time
f_result<-var.test(df$segment_actual_time, df$segment_osrm_time)
if (f_result$p.value < 0.05) {
  cat("Reject H0: Variances of segment_actual_time and segment_osrm_time are significantly different.\n\n")
} else {
  cat("Fail to Reject H0: No significant difference in variances.\n\n")
}

#4.is route type influence trip duration
anova_result <- aov(trip_duration_hours ~ route_type, data = df)
summary_result<-summary(anova_result)
pval<-summary_result[[1]][["pr(>F)"]][1]
if (!is.null(pval) && pval < 0.05) {
  print("Reject H0: Route type has a significant effect on trip duration.\n")
} else {
  print("Fail to reject H0: Route type does NOT have a significant effect on trip duration.\n")
}
#5.Does pickup_zone influence route_type
x<- table(df$source_name, df$route_type)
chi_result<-chisq.test(x)
if (chi_result$p.value < 0.05) {
  cat("Reject H0: Source name and route type are dependent (associated).\n\n")
} else {
  cat("Fail to Reject H0: No significant association between source name and route type.\n\n")
}




