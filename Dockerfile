FROM ibmcom/db2

RUN mkdir /var/custom \
&& chown root ./database/config/db2inst1/sqllib/security/db2ckpw \
&& chown root ./database/config/db2inst1/sqllib/security/db2chpw \
&& chmod -r-s--x--x ./database/config/db2inst1/sqllib/security/db2ckpw \
&& chmod -r-s--x--x ./database/config/db2inst1/sqllib/security/db2chpw

COPY createschema.sh /var/custom
RUN chmod a+x /var/custom/createschema.sh
