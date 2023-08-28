# tipi di dato sql

I tipi di dati in SQL sono degli attributi che specificano il tipo di valore che può essere memorizzato in una colonna di una tabella. Per esempio, se vuoi che una colonna contenga solo valori interi, puoi definire il suo tipo di dato come INT. I tipi di dati in SQL si possono suddividere in diverse categorie, a seconda del sistema di gestione del database che usi. Ecco alcune delle categorie più comuni:

- Tipi di dati numerici, come: INT, TINYINT, BIGINT, FLOAT, REAL, DECIMAL, MONEY, etc. Questi tipi di dati servono per memorizzare valori numerici interi o decimali, con o senza segno¹.
- Tipi di dati alfanumerici, come: CHAR, VARCHAR, TEXT, NCHAR, NVARCHAR, etc. Questi tipi di dati servono per memorizzare valori composti da lettere, numeri e caratteri speciali¹. La differenza tra i tipi CHAR e VARCHAR è che il primo ha una lunghezza fissa, mentre il secondo ha una lunghezza variabile. La differenza tra i tipi NCHAR e NVARCHAR è che il primo usa il formato Unicode per memorizzare i caratteri².
- Tipi di dati binari, come: BINARY, VARBINARY, BLOB, IMAGE, etc. Questi tipi di dati servono per memorizzare valori composti da byte binari¹. La differenza tra i tipi BINARY e VARBINARY è simile a quella tra CHAR e VARCHAR. La differenza tra i tipi BLOB e IMAGE è che il primo può memorizzare fino a 65.535 byte di dati, mentre il secondo può memorizzare fino a 2 GB di dati³.
- Tipi di dati temporali, come: DATE, TIME, DATETIME, TIMESTAMP, etc. Questi tipi di dati servono per memorizzare valori relativi alla data e/o all'ora¹. La differenza tra i tipi DATE e TIME è che il primo memorizza solo la data (anno, mese e giorno), mentre il secondo memorizza solo l'ora (ore, minuti e secondi). La differenza tra i tipi DATETIME e TIMESTAMP è che il primo memorizza sia la data che l'ora (con precisione al millisecondo), mentre il secondo memorizza un valore numerico che rappresenta il numero di secondi trascorsi dal 1° gennaio 1970⁴.

Queste sono solo alcune delle categorie principali dei tipi di dati in SQL. Esistono anche altri tipi di dati più specifici o personalizzati, a seconda del database che usi. Per maggiori informazioni sui tipi di dati in SQL, puoi consultare le seguenti fonti:





# comandi colonna latex 
Tra le graffe puoi inserire diversi comandi per modificare l'aspetto o il comportamento della colonna. Alcuni esempi sono:

- **\centering**: per centrare il contenuto della colonna.
- **\center**: centra il contenuto sia per l'altezza che la lunghezza 
- **\raggedleft** o **\raggedright**: per allineare il contenuto della colonna a sinistra o a destra.
- **\arraybackslash**: per ripristinare il significato originale del comando **\\** come fine riga, dopo aver usato un comando di allineamento.
- **\bfseries**, **\itshape**, **\scshape**, ecc.: per cambiare lo stile del carattere della colonna (grassetto, corsivo, maiuscoletto, ecc.).
- **\color{colore}**: per cambiare il colore del testo della colonna, usando il pacchetto **color** o **xcolor**.
- **\columncolor{colore}**: per cambiare il colore di sfondo della colonna, usando il pacchetto **colortbl**.

```latex
%unione delle celle in una colonna
\begin{table}[H]
	\begin{tabularx}{\textwidth}{|C|C|C|C|}
		\tableheader
		utente                  & \uppercase{e}             & 1 & \uppercase{s} \\
		\hline
		\multicolumn{2}{|c|}{-} & \multicolumn{2}{|l|}{okk}                     \\
	\end{tabularx}
\end{table}
```

- [Scriviamo un articolo in LaTeX - unipi.it](https://elearning.sp.unipi.it/pluginfile.php/21332/mod_resource/content/3/articolo.pdf)
- [Lists - Overleaf, Editor LaTeX online](https://it.overleaf.com/learn/latex/Lists)
- [Scrivere in TEX e LTEX - unipi.it](https://people.dm.unipi.it/lcmc/2020-21/files/scrivere-in-latex.pdf)






