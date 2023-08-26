-- selezione di tutte le visite in inglese che devono ancora avvenire
select V.descrizione, E.visita,E.data,G.ora,E.prezzo
from VISITE as V, EVENTI as E, GRUPPI G
WHERE V.nome = E.visita  AND G.id_evento = E.Id AND G.lingua = "inglese"
and CURRENT_DATE< E.data 
ORDER BY `E`.`data` ASC LIMIT 10;