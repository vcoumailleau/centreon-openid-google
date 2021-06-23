#!/bin/bash
#Set paths
centPath="/usr/share/centreon/www" 
declare -A hForm=( ["path"]="/include/Administration/parameters/general/" ["name"]="form.ihtml" )
declare -A pForm=( ["path"]="/include/Administration/parameters/general/" ["name"]="form.php" )
declare -A dbFunc=( ["path"]="/include/Administration/parameters/" ["name"]="DB-Func.php" )
declare -A classSSO=( ["path"]="/class/" ["name"]="centreonAuth.SSO.class.php" )


#Backup
echo "Backup files"
cp $centPath${hForm[path]}${hForm[name]} $PWD/backup/${hForm[name]}
cp $centPath${pForm[path]}${pForm[name]} $PWD/backup/${pForm[name]}
cp $centPath${dbFunc[path]}${dbFunc[name]} $PWD/backup/${dbFunc[name]}
cp $centPath${classSSO[path]}${classSSO[name]} $PWD/backup/${classSSO[name]}

#Install new files
echo "Install new file"
cp $PWD/patch/${hForm[name]} $centPath${hForm[path]}${hForm[name]}
cp $PWD/patch/${pForm[name]} $centPath${pForm[path]}${pForm[name]}
cp $PWD/patch/${dbFunc[name]} $centPath${dbFunc[path]}${dbFunc[name]}
cp $PWD/patch/${classSSO[name]} $centPath${classSSO[path]}${classSSO[name]}


echo "Installation is done !"

