# Tarea Postulación Desarrollador DevOps. Jr.

Este repositorio pretende presentarse como un extra a la tarea relacionada con la postulación a Desarrollador DevOps Jr de la Universidad de Chile.

## Instrucciones iniciales para correr el proyecto

Para levantar la infraestructura en DigitalOcean debes seguir los siguientes pasos:

1. Crear una variable de entorno con el token habilitado por DigitalOcean
2. Descargar las dependencias para levantar la infraestructura
3. Visualizar las acciones que se realizaran
4. Levantar la infrestructura

### 1. Variable de entorno

Para crear la variable de entorno requerida, debes tener una cuenta en DigitalOcean y generar un token con permisos de lectura y escritura.
Una vez tengas el token, ejecuta el siguiente comando:

```
export DO_TOKEN=<token-DigitalOcean>
```

La otra variable de entorno que debemos crear es el SECRET_KEY de la aplicación que vamos a levantar. Esto lo realizamos con el siguiente comando:

```
export SECRET_KEY=<random_string>
```

Debemos ingresar el dominio por el cual sedeamos visualizar nuestra aplicación.

```
export DOMAIN=<dominio-web>
```

### 2. Descargar dependencias

Para descargar las dependencias simplemente iniciamos terraform:

```
terraform init
```

### 3. Visualizar Acciones

Para visualizar las acciones que se ejecutarán en la nube, debemos ejecutar el siguiente comando:

```
terraform plan -var="do_token=${DO_TOKEN}" -var="secret_key='${SECRET_KEY}'" -var="domain='${DOMAIN}'"
```

### 4. Levantar infraestructura

Para levantar nuestra infraestructura debemos ejecutar el siguiente comando:

```
terraform apply -var="do_token=${DO_TOKEN}" -var="secret_key='${SECRET_KEY}'" -var="domain='${DOMAIN}'" -auto-approve
```

Si deseas destruir la infraestructura, debes ejecutar el siguiente comando:

```
terraform destroy -var="do_token=${DO_TOKEN}" -var="secret_key='${SECRET_KEY}'" -var="domain='${DOMAIN}'" -auto-approve
```

