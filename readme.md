This is a flask based kubernetes assignment assigned by ChatGPT. Essentially need to build a flask app that shows list of items and has functionality to add an item as well as delete, both has to happen in separate pages. Have to dockerise it and deploy it to a kubernetes cluster.

API endpoints:

`/` - shows list of all items in the database

`/add` - is a form where you can fill details of items and add it to the database

`/delete` - form where you have to fill the id of the item you want to delete.

SQLAlchemy database has been used in this project for the database.


To create a database:

```
export FLASK_APP=app
flask shell
python3
from app import db, Item
db.create_all()
```

To tage image before pushing:

```
docker tag flask-kubernetes <user-name>/flask-kubernetes:latest  
docker push <user-name>/flask-kubernetes:latest   
```

To build docker image:

```
docker build --tag flask-kubernetes . 
docker run -p 8000:8000 flask-kubernetes 
```

To deploy on kubernete

```
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
```

detailed explanation of the process behind the app in this blog https://sammith.hashnode.dev/chatgpt-told-me-to-do-this-part-2