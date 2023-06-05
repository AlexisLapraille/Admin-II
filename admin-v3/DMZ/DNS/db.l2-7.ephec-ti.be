$ORIGIN l2-7.ephec-ti.be.
$TTL	3600
@	IN	SOA	ns.l2-7.ephec-ti.be.   root.l2-7.ephec-ti.be. (

    2022061457 ; serial
    21600      ; refresh after 6 hours
    3600       ; retry after 1 hour
	1814000     ; expire after 3 week
	86400 )    ; minimum TTL of 1 day

;Nom de serveur faisant autoriter sur le domaine l2-7.ephec-ti.be.
@      IN      NS      ns.l2-7.ephec-ti.be.


;Le nom de mon serveur assigner à son IP
ns			IN	A	51.75.203.15;

;Server Web
b2b	IN	A	51.75.203.15;
www	IN	A	51.75.203.15;

;Server Mail
mail	IN	A	51.75.203.15;
@	IN	MX	10	mail;


