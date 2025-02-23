#!/bin/bash
source ./config

# check if you need to update
cd ${core}
git fetch
local_commit=$(git rev-parse HEAD)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
  echo -e "${GREEN}Updating Core-Termux...${WHITE}"
  git pull origin main
else
  exit
fi

# node modules list
node_modules=(
  "@devcorex/dev.x"
  "typescript"
  "@nestjs/cli"
  "prettier"
  "live-server"
  "localtunnel"
  "vercel"
)

# update termux repositories
echo -e "${GREEN}Updating termux repositories...${WHITE}"
yes | pkg update && yes | pkg upgrade

# update node modules
echo -e "${GREEN}Updating node modules...${WHITE}"
for module in "${node_modules[@]}"; do
  if [[ "${module}" == "@nestjs/cli" ]]; then
    version=$(npm list -g ${module} --depth=0 | grep ${module} | awk -F '@' '{print $3}')
  else
    version=$(npm list -g ${module} --depth=0 | grep ${module} | awk -F '@' '{print $2}')
  fi

  if [[ "${version}" != "$(npm show ${module} version)" ]]; then
    echo -e "Updating ${module}..."
    npm install -g ${module}@latest
  fi
done

# update nvchad
cd ~/.core-termux/nvchad-termux
git fetch
local_commit=$(git rev-parse HEAD)
remote_commit=$(git rev-parse origin/main)

if [ "${local_commit}" != "${remote_commit}" ]; then
  echo -e "Updating NvChad..."
  git pull origin main
  bash nvchad.sh
fi

# update core-termux
cd ${core} && git pull origin main
