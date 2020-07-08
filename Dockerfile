From ubuntu:18.04
RUN apt update && apt install -y curl 
ENV CHANNEL="demo"
ENV ICON=":dog:"
ENV NAME="Messenger"
ENV TEXT="This_is_a_test_message!"
ENV WH_URL="https://hooks.slack.com/services/"

CMD curl -X POST -d 'payload={"channel":"'$CHANNEL'","username":"'$NAME'","icon_emoji":"'$ICON'","link_names": "1","attachments": [{"text": "'$TEXT'"}]}' $WH_URL
