resource "docker_container" "nginx_proxy"{
    name = "nginx_proxy"
    image = var.app_image

    networks_advanced{
        name = docker_network.app_net.name
    }

    ports{
        external = 8000
        internal = 80
    }

    volumes{
        host_path = abspath("${path.module}/../host_volumes/nginx_conf")
        container_path = "/etc/nginx/conf.d"
        read_only = false
    }

    volumes{
        host_path = abspath("${path.module}/../host_volumes/web")
        container_path = "/usr/share/nginx/html"
        read_only = false
    }
}