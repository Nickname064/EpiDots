SCRIPTPATH=$(realpath $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

function launch_polybar(){
  if ! pidof polybar; then
    echo "LAUNCHING POLYBAR"
    nohup polybar >/dev/null &
  fi
}

bash $SCRIPTDIR/install.sh && 
cp $SCRIPTDIR/config ~/.config/i3/config && 
cp $SCRIPTDIR/.bashrc ~/.bashrc
i3-msg reload && 
launch_polybar
