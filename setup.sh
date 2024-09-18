SCRIPTPATH=$(realpath $0)
SCRIPTDIR=$(dirname $SCRIPTPATH)

function launch_polybar(){
  if ! pidof polybar; then
    echo "LAUNCHING POLYBAR"
    nohup polybar >/dev/null &
  fi
}

bash ./install.sh && 
cp $SCRIPTDIR/config ~/.config/i3/config && 
i3-msg reload && 
launch_polybar
