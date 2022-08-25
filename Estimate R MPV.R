#loads EpiEstim package
#carrega o pacote EpiEstim
library(EpiEstim)

#imports the file for RJ federal unit
#importa o arquivo do RJ
MPV.RJ <- read.csv("~/RStudio/MPV RJ.csv", sep=";")

#creates the dataframes with the Rt estimates for RJ
#cria os dataframes com a estimativa de Rt para o RJ
Rt_RJ <- estimate_R(MPV.RJ,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 9.8,
                      std_si = 9.1
                     )))
Rt_RJunique <- estimate_R(MPV.RJ,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 9.8,
                      std_si = 9.1,
                      t_start = 24,
                      t_end = 50
                    )))

Rt_RJ6 <- estimate_R(MPV.RJ,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 6.8,
                      std_si = 6.1
                    )))
Rt_RJ6unique <- estimate_R(MPV.RJ,
                         method = "parametric_si",
                         config = make_config(list(
                           mean_si = 6.8,
                           std_si = 6.1,
                           t_start = 24,
                           t_end = 50
                         )))

Rt_RJ12 <- estimate_R(MPV.RJ,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 12.8,
                      std_si = 12.1
                    )))
Rt_RJ12unique <- estimate_R(MPV.RJ,
                         method = "parametric_si",
                         config = make_config(list(
                           mean_si = 12.8,
                           std_si = 12.1,
                           t_start = 24,
                           t_end = 50
                         )))

#plots the epiemic curve graph for RJ
#plota o gráfico da curva epidêmica (incidência) para o RJ
plot(Rt_RJ, 
     what = "incid",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlab = "Time", 
                      ylab = "Incidence"), 
     legend = TRUE)
#plots the Rt estimate for RJ, from the 30th day onward, with the three serial intervals (SI)
#plota o gráfico da estimativa de Rt para o RJ, a partir do dia 30, com os três intervalos seriais (SI)
plot(Rt_RJ, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_RJ6, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_RJ12, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)

#generates CSVs with the RJ Rt data
#gera arquivos CSV com os dados de Rt do RJ
write.csv(Rt_RJ$R, "~/RStudio/R.RJ.csv")
write.csv(Rt_RJunique$R, "~/RStudio/R.RJunique.csv")
write.csv(Rt_RJ6$R, "~/RStudio/R.RJ6.csv")
write.csv(Rt_RJ6unique$R, "~/RStudio/R.RJ6unique.csv")
write.csv(Rt_RJ12$R, "~/RStudio/R.RJ12.csv")
write.csv(Rt_RJ12unique$R, "~/RStudio/R.RJ12unique.csv")

#imports the file for SP federal unit
#importa o arquivo do SP
MPV.SP <- read.csv("~/RStudio/MPV SP.csv", sep=";")

#creates the dataframes with the Rt estimates for SP
#cria os dataframes com a estimativa de Rt para o SP
Rt_SP <- estimate_R(MPV.SP,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 9.8,
                      std_si = 9.1
                    )))
Rt_SPunique <- estimate_R(MPV.SP,
                          method = "parametric_si",
                          config = make_config(list(
                            mean_si = 9.8,
                            std_si = 9.1,
                            t_start = 24,
                            t_end = 50
                          )))

Rt_SP6 <- estimate_R(MPV.SP,
                     method = "parametric_si",
                     config = make_config(list(
                       mean_si = 6.8,
                       std_si = 6.1
                     )))
Rt_SP6unique <- estimate_R(MPV.SP,
                           method = "parametric_si",
                           config = make_config(list(
                             mean_si = 6.8,
                             std_si = 6.1,
                             t_start = 24,
                             t_end = 50
                           )))

Rt_SP12 <- estimate_R(MPV.SP,
                      method = "parametric_si",
                      config = make_config(list(
                        mean_si = 12.8,
                        std_si = 12.1
                      )))
Rt_SP12unique <- estimate_R(MPV.SP,
                            method = "parametric_si",
                            config = make_config(list(
                              mean_si = 12.8,
                              std_si = 12.1,
                              t_start = 24,
                              t_end = 50
                            )))

#plots the epiemic curve graph for SP
#plota o gráfico da curva epidêmica (incidência) para SP
plot(Rt_SP, 
     what = "incid",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlab = "Time", 
                      ylab = "Incidence"), 
     legend = TRUE)
#plots the Rt estimate for SP, from the 30th day onward, with the three serial intervals (SI)
#plota o gráfico da estimativa de Rt para o SP, a partir do dia 30, com os três intervalos seriais (SI)
plot(Rt_SP, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_SP6, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_SP12, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)

#generates CSVs with the SP Rt data
#gera arquivos CSV com os dados de Rt de SP
write.csv(Rt_SP$R, "~/RStudio/R.SP.csv")
write.csv(Rt_SPunique$R, "~/RStudio/R.SPunique.csv")
write.csv(Rt_SP6$R, "~/RStudio/R.SP6.csv")
write.csv(Rt_SP6unique$R, "~/RStudio/R.SP6unique.csv")
write.csv(Rt_SP12$R, "~/RStudio/R.SP12.csv")
write.csv(Rt_SP12unique$R, "~/RStudio/R.SP12unique.csv")

#imports the file for MG federal unit
#importa o arquivo de MG
MPV.MG <- read.csv("~/RStudio/MPV MG.csv", sep=";")

#creates the dataframes with the Rt estimates for MG
#cria os dataframes com a estimativa de Rt para MG
Rt_MG <- estimate_R(MPV.MG,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 9.8,
                      std_si = 9.1
                    )))
Rt_MGunique <- estimate_R(MPV.MG,
                          method = "parametric_si",
                          config = make_config(list(
                            mean_si = 9.8,
                            std_si = 9.1,
                            t_start = 24,
                            t_end = 50
                          )))

Rt_MG6 <- estimate_R(MPV.MG,
                     method = "parametric_si",
                     config = make_config(list(
                       mean_si = 6.8,
                       std_si = 6.1
                     )))
Rt_MG6unique <- estimate_R(MPV.MG,
                           method = "parametric_si",
                           config = make_config(list(
                             mean_si = 6.8,
                             std_si = 6.1,
                             t_start = 24,
                             t_end = 50
                           )))

Rt_MG12 <- estimate_R(MPV.MG,
                      method = "parametric_si",
                      config = make_config(list(
                        mean_si = 12.8,
                        std_si = 12.1
                      )))
Rt_MG12unique <- estimate_R(MPV.MG,
                            method = "parametric_si",
                            config = make_config(list(
                              mean_si = 12.8,
                              std_si = 12.1,
                              t_start = 24,
                              t_end = 50
                            )))

#plots the epidemic curve graph for MG
#plota o gráfico da curva epidêmica (incidência) para MG
plot(Rt_MG, 
     what = "incid",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlab = "Time", 
                      ylab = "Incidence"), 
     legend = TRUE)
#plots the Rt estimate for MG, from the 30th day onward, with the three serial intervals (SI)
#plota o gráfico da estimativa de Rt para MG, a partir do dia 30, com os três intervalos seriais (SI)
plot(Rt_MG, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_MG6, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_MG12, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)

#generates CSVs with the MG Rt data
#gera arquivos CSV com os dados de Rt de MG
write.csv(Rt_MG$R, "~/RStudio/R.MG.csv")
write.csv(Rt_MGunique$R, "~/RStudio/R.MGunique.csv")
write.csv(Rt_MG6$R, "~/RStudio/R.MG6.csv")
write.csv(Rt_MG6unique$R, "~/RStudio/R.MG6unique.csv")
write.csv(Rt_MG12$R, "~/RStudio/R.MG12.csv")
write.csv(Rt_MG12unique$R, "~/RStudio/R.MG12unique.csv")

#imports the file for GO-FD federal units
#importa o arquivo de GO e DF
MPV.GOFD <- read.csv("~/RStudio/MPV GO-FD.csv", sep=";")

#creates the dataframes with the Rt estimates for GO-FD
#cria os dataframes com a estimativa de Rt para GO e DF
Rt_GOFD <- estimate_R(MPV.GOFD,
                    method = "parametric_si",
                    config = make_config(list(
                      mean_si = 9.8,
                      std_si = 9.1
                    )))
Rt_GOFDunique <- estimate_R(MPV.GOFD,
                          method = "parametric_si",
                          config = make_config(list(
                            mean_si = 9.8,
                            std_si = 9.1,
                            t_start = 24,
                            t_end = 50
                          )))

Rt_GOFD6 <- estimate_R(MPV.GOFD,
                     method = "parametric_si",
                     config = make_config(list(
                       mean_si = 6.8,
                       std_si = 6.1
                     )))
Rt_GOFD6unique <- estimate_R(MPV.GOFD,
                           method = "parametric_si",
                           config = make_config(list(
                             mean_si = 6.8,
                             std_si = 6.1,
                             t_start = 24,
                             t_end = 50
                           )))

Rt_GOFD12 <- estimate_R(MPV.GOFD,
                      method = "parametric_si",
                      config = make_config(list(
                        mean_si = 12.8,
                        std_si = 12.1
                      )))
Rt_GOFD12unique <- estimate_R(MPV.GOFD,
                            method = "parametric_si",
                            config = make_config(list(
                              mean_si = 12.8,
                              std_si = 12.1,
                              t_start = 24,
                              t_end = 50
                            )))

#plots the epiemic curve graph for GO-FD
#plota o gráfico da curva epidêmica (incidência) para GO e DF
plot(Rt_GOFD, 
     what = "incid",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlab = "Time", 
                      ylab = "Incidence"), 
     legend = TRUE)
#plots the Rt estimate for GO-FD, from the 30th day onward, with the three serial intervals (SI)
#plota o gráfico da estimativa de Rt para GO e DF, a partir do dia 30, com os três intervalos seriais (SI)
plot(Rt_GOFD, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_GOFD6, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)
plot(Rt_GOFD12, 
     what = "R",
     options_R = list(col = palette(), 
                      transp = 0.2, 
                      xlim = c(30,50), 
                      ylim = c(0,4), 
                      xlab = "Time", 
                      ylab = "Rt"), 
     legend = TRUE)

#generates CSVs with the GO-FD Rt data
#gera arquivos CSV com os dados de Rt de GO e DF
write.csv(Rt_GOFD$R, "~/RStudio/R.GOFD.csv")
write.csv(Rt_GOFDunique$R, "~/RStudio/R.GOFDunique.csv")
write.csv(Rt_GOFD6$R, "~/RStudio/R.GOFD6.csv")
write.csv(Rt_GOFD6unique$R, "~/RStudio/R.GOFD6unique.csv")
write.csv(Rt_GOFD12$R, "~/RStudio/R.GOFD12.csv")
write.csv(Rt_GOFD12unique$R, "~/RStudio/R.GOFD12unique.csv")

