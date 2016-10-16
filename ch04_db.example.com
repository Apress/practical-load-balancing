$TTL    604800
@       IN      SOA     ns1.example.com. info.example.com. (
                            2011102401         ; Serial
                                  7200         ; Refresh
                                   900          ; Retry
                               2419200         ; Expire
                                604800)        ; Min
;
@                       IN      NS      ns1.example.com.
@                       IN      NS      ns2.example.com.

example.com.             IN      MX      10      mail.example.com.

example.com.             IN      A       123.123.123.123
mail                    IN      A       123.123.123.123
ns1                     IN      A       234.234.234.234
ns2                     IN      A       234.234.234.234

www                     IN      CNAME   example.com.  
ftp                     IN      CNAME   example.com.  

