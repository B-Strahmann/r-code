install.packages("rempsyc")
library(rempsyc)
install.packages("flextable")
library(flextable)
pkgs <- c("broom", "report", "effectsize")
install_if_not_installed(pkgs)

# Alle Infos hier: https://rempsyc.remi-theriault.com/articles/table.html

# Erstmal Dataframe erstellen
SPALTENNAME1 <- c("WERT1", "WERT2", "WERTX")
SPALTENNAME2 <- c(.3, 21, .005)
DATAFRAME <- data.frame(SPALTENNAME1, SPALTENNAME2)


#Dataframe zu schicker Tabelle ändern

TABELLENNAME <- nice_table(NAME_VOM_DATAFRAME[SPALTEN],
                    title = c("Tabelle 1", "Überschrift der Tabelle"),
                    footnote = c("Beschreibung der Tabelle", 
                         "* p < .05, ** p < .01, *** p < .001"))

#zum Speichern:
flextable::save_as_docx(TABELLENNAME, path = "ORDNER/SPEICHERORT.docx")