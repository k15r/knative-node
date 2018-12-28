1. Modify `secret.yaml`
2. `kubectl apply -f secret.yaml`
3. `kubectl apply -f kubeless.yaml`


WAIT

curl -H "Host: helloworld-nodejs.default.example.com" http://$(minikube ip):$(kubectl get svc knative-ingressgateway --namespace istio-system --output 'jsonpath={.spec.ports[?(@.port==80)].nodePort}')

