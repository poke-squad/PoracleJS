FROM node

# DEPS
RUN apt-get -y update && apt-get install -y curl \
gnupg2 \
git

# PoracleJS
RUN git clone https://github.com/poke-squad/PoracleJS.git -b develop && cd PoracleJS && npm install

WORKDIR PoracleJS

CMD npm start
