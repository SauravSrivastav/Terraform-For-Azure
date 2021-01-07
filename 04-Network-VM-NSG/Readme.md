# Virtual Network 
> provides with a private network.
> It's first resource we need to create before creating VM's or other services that requires private network access or connectivity.
> Requires Location & Address Space(Private IP range that we can use).eg 172.16.0.0/12, 10.0.0.0/8, 192.168.0.0/16 ranges(Use CIDR Tables)

# Subnet 
> 10.0.0.0/16 -> VM subnet: (10.0.0.0/21 = 10.0.0.0 - 10.0.7.255)... 10.0.1.0....
              -> Database Subnet: (10.0.8.0/22 = 10.0.8.0 - 10.0.11.255)
              -> Load Balancer Subnet: (10.0.12.0/24 = 10.0.12.0 - 10.0.12.255)


# Note: When creating a subnet, azure will reserve 5 IP addressess for own use:
> x.x.x.0: Network address
> x.x.x.1: Reserved by Azure for the default gateway
> x.x.x.2, x.x.x.3: Reserved by Azure to map the Azure DNS IPs to the VNet Space 
> x.x.x.0: Network broadcast address.

# Route Tables
> For each subnet we create, Azure will create a default route table, this ensures that IP addresses can be routed to other subnets, Vnets, a VPN, or to the internet.
> We can override the default routes by creating our own custom routes.


# Virtual Machine Contains
> A name
> The Location
> The RG
> Images(Windows, Ubuntu)
> Storage for OS disk(Standard_LRS)
> VM size(Standard_A1_v2)
> OS profile(computer name, username & passw0rd)
> OS profile ()

# Network Interface

> Can assign NSG to create firewall rules for our instance.
> Can assign a Private/Public IP address to a network.
* The Public IP is an external internet routable IP address.
* The Private IP is within our VNet.(Ip released when NIC is deleted)
* And,their allocation can be static or dynamic.
* Dynamic allocation, the next unassigned IP address within the Subnet's IP range will be assigned..
>
