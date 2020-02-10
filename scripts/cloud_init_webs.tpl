#cloud-config
repo_update: true
repo_upgrade: all

packages:
  - wget
  - unzip
  - zip
  - git
  - httpd

runcmd:
  - git clone https://github.com/cloudacademy/static-website-example.git /var/www
  - sudo systemctl start httpd
  - sudo systemctl enable httpd
