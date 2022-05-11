# discourse-install-k8s

Install discourse forum with web only mode in kubernetes.

## How to install

#### Step 1: Clone this project to server host what you want to install.

```shell
git clone https://github.com/imjokey/discourse-install-k8s.git && cd discourse-install-k8s
```

#### Step 2:  Install Postgres and Redis dependencies.

-  Postgress
  Install **kubegres**  ref:  [https://www.kubegres.io/doc/getting-started.html](https://www.kubegres.io/doc/getting-started.html) .
    > Deploy smaple yamls can find in **postgres** directory. 

-  Redis
  Deploy yamls  can find in **redis** directory.

#### Step 3:  Configure  discourse build args

Edit `web_only.yml` and set your own environment variables.

#### Step 4:  build & deploy  discourse web only image

Just run `build.sh` script to build and deploy discourse.

> Certainly,  If you have customer  build requirements,  you can  also customize the build script. 

```sh
sh build.sh 
```

###### Enjoy it! if you have any questions  in install processing, please contact me and let me know that. :)









