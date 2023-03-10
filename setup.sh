echo "Installing yarn"
curl -sL https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list
apt-get update -qq \
  && apt-get install -y \
  apt-utils \
  nodejs \
  yarn

echo "Install gem packages"
bundle install