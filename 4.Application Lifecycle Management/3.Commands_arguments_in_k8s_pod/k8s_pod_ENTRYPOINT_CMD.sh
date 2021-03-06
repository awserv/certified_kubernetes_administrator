so in k8s pod-definition file

The ENTRYPOINT is replaced by the "command"

and CMD is replaced by the "args"

as below.

apiVersion: v1
kind: Pod
metadata:
  name: ubuntu-sleeper-pod
spec:
  containers:
    - name: ubuntu-sleeper
      image: ubuntu-sleeper
      command: ["sleep2.0"] #Replacing entrypoint like docker run --entrypoint sleep2.0  -d ubuntu-sleeper 55
      args: ["60"]

