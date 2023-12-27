# login as root
sudo su

# make directories if needed
mkdir /opt/jdk

# download 32-bit JDK 17 
wget https://github.com/adoptium/temurin17-binaries/releases/download/jdk-17.0.1%2B12/OpenJDK17U-jdk_arm_linux_hotspot_17.0.1_12.tar.gz

# uncompress
tar xzfv OpenJDK17U-jdk_arm_linux_hotspot_17.0.1_12.tar.gz

# check version
./jdk-17.0.1+12/bin/java -version

# update alternatives
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-17.0.1+12/bin/java 100
update-alternatives --install /usr/bin/java java /opt/jdk/jdk-17.0.1+12/bin/javac 100

# check links - should be pointing to 17
update-alternatives --display java
update-alternatives --display javac


