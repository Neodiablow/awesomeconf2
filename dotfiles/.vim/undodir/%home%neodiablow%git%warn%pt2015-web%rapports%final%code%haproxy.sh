Vim�UnDo� ��'x��h����d�%qw*a���m//]^����]   L   :#Réalisation manuelle d'au moins une partie des commandes                             U��    _�                     7        ����                                                                                                                                                                                                                                                                                                                                                             U�	     �   6   8   L      #ip link set eth1 down5�_�                    9        ����                                                                                                                                                                                                                                                                                                                                                             U�K     �   8   9          $cat << eof > /etc/network/interfaces   E# This file describes the network interfaces available on your system   D# and how to activate them. For more information, see interfaces(5).        # The loopback network interface   auto lo   iface lo inet loopback       # The primary network interface   allow-hotplug eth1   iface eth1 inet dhcp       allow-hotplug br0   auto br0   iface br0 inet dhcp       bridge_ports eth1       bridge_stp off   5    post-up ip link set br0 address 00:1e:4f:d1:d0:8f   eof    5�_�                    1        ����                                                                                                                                                                                                                                                                                                                                                             U�N     �   1   F   8    �   1   2   8    5�_�                    2        ����                                                                                                                                                                                                                                                                                                                                                             U�O    �   1   4   L      $cat << eof > /etc/network/interfaces5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�r     �   
             6apt-get install libpam-systemd cgroup-bin cgroup-tools5�_�                            ����                                                                                                                                                                                                                                                                                                                                                             U�t     �         L    �         L    5�_�                           ����                                                                                                                                                                                                                                                                                                                                                             U�x     �         M      6apt-get install libpam-systemd cgroup-bin cgroup-tools5�_�      	                     ����                                                                                                                                                                                                                                                                                                                                                             U�z     �         M      apt-get install lxc5�_�      
           	          ����                                                                                                                                                                                                                                                                                                                                                             U�{     �         M      apt-get install lxc �         M    5�_�   	              
           ����                                                                                                                                                                                                                                                                                                                                                             U�~    �                apt-get install 5�_�   
                         ����                                                                                                                                                                                                                                                                                                                                                             U��    �         L      :#Réalisation manuelle d'au moins une partie des commandes5��