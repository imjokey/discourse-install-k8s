# discourse-install-k8s

Install discourse forum in a web-only mode in Kubernetes.

## How to install

#### Step 1: Clone this project to the server host where you want to install it.

```shell
git clone https://github.com/imjokey/discourse-install-k8s.git && cd discourse-install-k8s
```

#### Step 2:  Install Postgres and Redis dependencies.

-  Postgress
  Install **kubegres**  ref:  [https://www.kubegres.io/doc/getting-started.html](https://www.kubegres.io/doc/getting-started.html) .
    > Deploy sample yamls you can find in the **postgres** directory. 

-  Redis
  Deploy yamls you can find in the **redis** directory.

#### Step 3:  Configure  discourse build args

Edit `web_only.yml` and set your environment variables.

#### Step 4:  build & deploy  discourse web only image

Just run `run.sh` script to build and deploy discourse.

> Certainly,  If you have custom build requirements,  you could also customize the building script. 

```sh
sh run.sh 
```

###### Enjoy it! if you have any questions in install processing, please contact me and let me know. :)
