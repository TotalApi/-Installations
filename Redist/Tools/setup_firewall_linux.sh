# https://1cloud.ru/help/security/ispolzovanie-utility-ufw-na-inux

sudo ufw list # ���������� ������� �������

sudo ufw status # ���������� ������� ������

# ��������� ������ ������ � ��������� IP-�������
sudo ufw allow from 213.194.126.135 # Turkey IP (Emerald Paradise)
sudo ufw allow from 213.155.24.83   # Ukrainian IP (Work)
sudo ufw allow from 217.147.172.200 # test
sudo ufw allow from 85.198.142.206  # office
sudo ufw allow from 77.123.128.188  # vetal

sudo ufw allow from ?.?.?.?         # metrix 


sudo ufw allow OpenSSH # ��������� SSH

sudo ufw enable        # �������� ��������


