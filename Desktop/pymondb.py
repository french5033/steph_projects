import pymongo

myclient = pymongo.MongoClient("mongodb://localhost:27017/")
mydb = myclient["mydatabase"]
mycol = mydb["customers"]

mylist = [
    {"name":"Joe", "address": "23 Cherry Coke Lane"}
#  { "name": "Amy", "address": "Apple st 652"},
#  { "name": "Hannah", "address": "Mountain 21"},
#  { "name": "Michael", "address": "Valley 345"},
#  { "name": "Sandy", "address": "Ocean blvd 2"},
#  { "name": "Betty", "address": "Green Grass 1"},
#  { "name": "Richard", "address": "Sky st 331"},
#  { "name": "Susan", "address": "One way 98"},
#  { "name": "Vicky", "address": "Yellow Garden 2"},
#  { "name": "Ben", "address": "Park Lane 38"},
#  { "name": "William", "address": "Central st 954"},
#  { "name": "Chuck", "address": "Main Road 989"},
#  { "name": "Viola", "address": "Sideway 1633"}
]

x = mycol.insert_many(mylist)

#print list of the _id values of the inserted documents:
print(x.inserted_ids)

#insert new entry into mycol
mydict = { "name": "John", "address": "Highway 37" }
x = mycol.insert_one(mydict)

mydict = { "name": "Peter", "address": "Lowstreet 27" }

x = mycol.insert_one(mydict)

mydoc = mycol.find().sort("name")
print("Sorted entries: ")
for x in mydoc:
  print(x)

#Check entries
#print("Inserted Entries: ", x.inserted_id)
print("Collection Names: ", mydb.list_collection_names())
print("Database Names: ", myclient.list_database_names())

