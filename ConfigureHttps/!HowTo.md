��������� ������������ ��� ����������� �� https
===============================================

1. ��� �������, ����������� ���� ��������� ��� ������� ���������� �������������� �� ���������� ��� ������� ������ Navis.

2. ���� � ��� ��� ���� ����������� - ����� ������� � �������������� ��������������� ����������. 
   ��� ����� ��������� �������:

    makecert -pe -ss MY -sr LocalMachine -a sha1 -sky exchange -n CN=ClientCertificate "<���_�����_�����������.cer>"

3. ��� ������ ������ ����� ��� ������ ������������� ����������� ��������� �������:

    BindPort.bat "<����_�����������>" "<���_�����_�����������.cer>"
���
    BindPort.bat "<����_�����������>" "<���_�����_�����������.pfx>" "<������>"

    ������ ������������ ������ ��� pfx-������ ������������ ��� �� ����������� � ��������� ������������.
    ���� ������ �� ������ ��� ������� � ���������� �� ���������� � ��������� ������������ - �������� ����������� 
    � ������ ����� �� ����� ���������.
    ����� ������������ � ����������� .cer �� ����� ��������� ����� � �� ����� ���� �����������. 


�������
-------

1. �� ����������� WCF ������� �� ����������� SSL-����� 443 � � ��� ��� �����������:


    makecert -pe -ss MY -sr LocalMachine -a sha1 -sky exchange -n CN=ClientCerttificate MyCert.cer    
    BindPort.bat 443 MyCert.cer 

2. �� ����������� WCF ������� �� ����� 88 � � ��� ���� ���������� NavisServicesCertificate.pfx � ������� 123:

    BindPort.bat 88 NavisServicesCertificate.pfx 123 


3. ����� ��������� ������������� ����� ��� ���� �������������� ���������� ��������� �������

    netsh http add urlacl url=http://+:80/totalapi/ user=���
    netsh http add urlacl url=http://+:81/totalapi/ user=���
    netsh http add urlacl url=http://+:9999/totalapi/ user=���
    netsh http add urlacl url=http://+:1202/totalapi/ user=���
    netsh http add urlacl url=http://+:1302/totalapi/ user=���

    netsh http add urlacl url=http://+:8081/totalapi/ user=���
