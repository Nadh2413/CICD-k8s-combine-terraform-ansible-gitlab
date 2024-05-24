# CI/CD IaS k8s on azure and frondend  using terrafrom, ansible with Gitlab
1. DevOps system diagram

  ![image](https://github.com/Nadh2413/CICD-k8s-combine-terraform-ansible-gitlab/assets/117442476/631bf61f-e828-440b-80c4-b408ecb62895)




   
3. UI CI/CD on Gitlab
![image](https://github.com/Nadh2413/CICD-k8s-combine-terraform-ansible-gitlab/assets/117442476/d58b37e2-1844-4ef0-8062-b208cc33a0e9)

4. Infa on azure
   ![image](https://github.com/Nadh2413/CICD-k8s-combine-terraform-ansible-gitlab/assets/117442476/bb7bf920-3862-4d82-86ef-3c337aa9a7f2)

5. Organiaztion the code model


  ![image](https://github.com/Nadh2413/CICD-k8s-combine-terraform-ansible-gitlab/assets/117442476/36a63778-10b4-46db-8a49-7a17e7177ced)


!!! Master deploy service and app


**** Demo K8S ***


master:

 /home/huancd/1.deploy-cafe-app.yml


apiVersion: apps/v1
kind: Deployment
metadata:
  name: cafe-app-deployment
  labels:
    app: cafe-app
spec:
  replicas: 2
  selector:
    matchLabels:
      app: cafe-app
  template:
    metadata:
      labels:
        app: cafe-app
    spec:
      containers:
      - name: cafe-app
        image: cdhuan1003/cafe-app
        ports:
        - containerPort: 80
		
		
/home/huancd/2.service-cafe-app.yml		

apiVersion: v1
kind: Service
metadata:
  name: cafe-app-service
spec:
  selector:
    app: cafe-app
  ports:
    - port: 80
      targetPort: 80
      nodePort: 30080
  type: NodePort
 
