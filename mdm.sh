csrutil authenticated-root disable;
diskutil mount /Volumes/Macshintos;
Mount -uv /Volumes/Macshintos;	
 cd /Volumes/Macshintos/System/Library/LaunchAgents;
mkdir tmp;
mv com.apple.ManagedClientAgent.* tmp/;
mv com.apple.mdmclient.* tmp/;
cd ../LaunchDaemons;
mkdir tmp;
mv com.apple.ManagedClient.* tmp/;
mv com.apple.mdmclient.* tmp/;
bless --folder /Volumes/Macshintos/System/Library/CoreServices --bootefi --create-snapshot;
#cd ../../etc
#echo "0.0.0.0 iprofiles.apple.com" >> hosts
#echo "0.0.0.0 mdmenrollment.apple.com" >> hosts
#echo "0.0.0.0 deviceenrollment.apple.com" >> hosts
#echo "0.0.0.0 gdmf.apple.com" >> hosts
csrutil enable
