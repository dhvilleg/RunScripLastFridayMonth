# =====================================================================================
#  Script %name:        scp_last_th.sh %
#  %version:            1 %
#  Description:         Ejecuta procesos el ultimo viernes de cada mes
#  %created_by:         Diego Villegas (FDM) %
#  %date_created:       Mon Jul 25 16:02:30 SAT 2011 %
# =====================================================================================
# change log
# =====================================================================================
# Mod.ID         Who                       When                         Description
# =====================================================================================
#
# =====================================================================================
DAY=`date +%e`
LASTH=`cal |awk '{print $6}'|grep -v -E '^$'|tail -n1`
if [ $DAY -eq $LASTH ]; then
	#colocar las lineas de los scripts a ejecutar....
	
else
	#Si no es el ultmo viernes del mes (LASTH), no hace nada
	exit 0
fi
