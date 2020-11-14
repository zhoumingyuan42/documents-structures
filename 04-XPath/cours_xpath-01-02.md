1. /pdv_liste/name()
2. /pdv_liste/pdv/child::node()
3. /pdv_liste/pdv/ville/text()
4. /pdv_liste/pdv[46]
5. /pdv_liste/pdv/prix[position()=last()]
6. /pdv_liste/pdv[@id="3150005"]
7. //pdv[services[not(service[text()="GPL"])]]
8. /pdv_liste/pdv/services/following-sibling::*
9. /pdv_liste/pdv[@cp="16170"]/ville
10. /pdv_liste/pdv[ouverture[@saufjour="Lundi"]]
11. //service[text()="Relais colis"]/../parent::*
12. //*[following::*[10] ="Piste poids lourds"]
13. //rupture[@nom="SP95" and matches(@début, '2013-02-04')]/..
14. /pdv_liste/pdv/fermeture[not(@*)]/..
15. /pdv_liste/pdv/ville[text()="La Mure"]/../prix[@nom="E10"]
