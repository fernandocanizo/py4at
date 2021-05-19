# Sample docker building command
# Edit appropriately to replace tags and branch

docker build \
  -t flc/py4at:`git tag | tail -n 1` \
  -t flc/py4at:latest \
  .
