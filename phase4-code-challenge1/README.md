
# phase4-code-challenge1
 It is an API for tracking pizzas restaurants.
## Technologies Used in API
- Ruby
- ActiveRecord
- SQLite3
- Rack
- Rails

## Relationship with Database
+ Restaurant 
 -has_many Pizza through RestaurantPizza

+ Pizza
 -Has many Restaurant through RestaurantPizza
 
 + RstaurantPizza
  -Belongs to a Restaurant
  -Belongs to a Pizza

 ## Installation

To use this repo on your machine requires some simple steps

- Open a terminal / command line interface on your computer
- Clone the repo by using the following:

        git clone https://https://github.com/kericho/phase4-code-challenge1.git

- Be patient as it creates a copy on your local machine for you.
- Change directory to the repo folder:

        cd phase4-code-challenge1

- (Optional) Open it in ``Visual Studio Code``

        code .

- (Alternate Option) Open it in any editor of your choice.

-To install the necessary dependencies run:

    bundle install

-To create migrations with ActiveRecord, run:

    bundle exec rails db:migrate

-If you would like to use seed data, run:

    bundle exec rails db:seed

To start the server, run:

    rails s

## Deliverables

GET /restaurants

```
http://localhost:3000/restaurants
```

```
[
    {
        "id": 1,
        "name": "Golden Grill",
        "address": "962 Stiedemann Lights"
    },
    {
        "id": 2,
        "name": "Red Eatery",
        "address": "7949 Nitzsche Stream"
    },
    {
        "id": 3,
        "name": "Red Cafe",
        "address": "652 Salome Lakes"
    },
    {
        "id": 4,
        "name": "Red Spoon",
        "address": "5473 Sherrill Harbors"
    },
    {
        "id": 5,
        "name": "Sweet Dragon",
        "address": "462 Runolfsson Dam"
    },
    {
        "id": 6,
        "name": "Orange Spoon",
        "address": "589 Frami Trafficway"
    },
    {
        "id": 7,
        "name": "UF Pub",
        "address": "199 Carlos Point"
    }
]
```

GET /restaurants/:id

```
http://localhost:3000/restaurants/4
```

```
{
    "id": 4,
    "name": "Red Spoon",
    "address": "5473 Sherrill Harbors",
    "pizzas": [
        {
            "id": 6,
            "name": "St. Louis Pizza",
            "ingredients": "cheddar cheese,swiss cheese, tomato sauce, oregano"
        },
        {
            "id": 7,
            "name": "Neopolitan Pizza",
            "ingredients": "tomato sauce, mozzarella cheese, basil"
        },
        {
            "id": 4,
            "name": "Greek Pizza",
            "ingredients": "tomato sauce, cheddar cheese, feta cheese, black olives, red onion"
        }
    ]
}
```

GET /pizzas

```
http://localhost:3000/pizzas
```

```
[
    {
        "id": 1,
        "name": "New York-Style Pizza",
        "ingredients": "pepperoni,garlic, mushroom, anchovies, parmesan-cheese, oregano, red-pepper"
    },
    {
        "id": 2,
        "name": "California Pizza",
        "ingredients": "artichoke, goat cheese, mustard,ricotta cheese, pate, red peppers"
    },
    {
        "id": 3,
        "name": "Chicago Pizza",
        "ingredients": "sausage, pepperoni, onion, mushrooms,green peppers"
    },
    {
        "id": 4,
        "name": "Greek Pizza",
        "ingredients": "tomato sauce, cheddar cheese, feta cheese, black olives, red onion"
    },
    {
        "id": 5,
        "name": "Detroit Pizza",
        "ingredients": "pepperoni, brick cheese, mushrooms, olive"
    },
    {
        "id": 6,
        "name": "St. Louis Pizza",
        "ingredients": "cheddar cheese,swiss cheese, tomato sauce, oregano"
    },
    {
        "id": 7,
        "name": "Neopolitan Pizza",
        "ingredients": "tomato sauce, mozzarella cheese, basil"
    },
    {
        "id": 8,
        "name": "Sicilian Pizza",
        "ingredients": " tomato, onion, anchovies, herbs"
    }
]
```

POST /restaurant_pizzas

```
{
    "price": 22,
    "pizza_id": 1,
    "restaurant_id": 1
}
```

## Author
Elvis Rono
