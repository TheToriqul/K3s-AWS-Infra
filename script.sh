ssh -i path_to_your_key.pem ubuntu@your_instance_ip
curl -sfL https://get.k3s.io | sh -
ping -c 5 <worker-1_node_ip>
ping -c 5 <worker-2_node_ip>
sudo cat /var/lib/rancher/k3s/server/node-token
curl -sfL https://get.k3s.io | K3S_URL=https://<master-ip>:6443 K3S_TOKEN=<token> sh -
kubectl get nodes
vi k3s-app.yml
kubectl apply -f k3s-app.yml.yaml
kubectl get deployments
kubectl get services
kubectl get ingress
kubectl get nodes -o wide
curl <node-ip>
