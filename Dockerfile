#Custom odoo Image: Created by Claudio Manuel
#Disabling the database management options: setting list_bd=False
FROM odoo:13
USER root
RUN sed -i 's/; list_db=True/list_db=False/g' /etc/odoo/odoo.conf
COPY /addons_ohrm/ /mnt/extra-addons
RUN python3 -m pip install pandas
USER odoo
#then go to the browser and activate developer mode and then update the app list
