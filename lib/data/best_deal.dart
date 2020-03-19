import 'package:flutter/material.dart';

class Deal {
  String imageURL, name, descp, location, city;
  int price;

  Deal(
      {this.imageURL,
      this.name,
      this.descp,
      this.price,
      this.location,
      this.city});

  cafesLabel() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'BEST CAFE',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  cafesInfo() {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _bestCafe.length,
        itemBuilder: (context, int index) {
          final cafes = _bestCafe[index];
          return Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              width: 200,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(cafes.imageURL),
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.only(bottom: 220),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    ),
                    color: Colors.transparent.withOpacity(0.4),
                  ),
                  child: ListTile(
                    leading: Icon(Icons.location_on, color: Colors.white),
                    title: Text(
                      cafes.location,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    ),
                    subtitle: Text(
                      cafes.city,
                      style: TextStyle(
                        color: Colors.white.withOpacity(1),
                        fontWeight: FontWeight.w500,
                        fontSize: 14,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  hotelsInfo() {
    return Container(
      height: 300,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _bestHotels.length,
        itemBuilder: (context, int index) {
          final hotels = _bestHotels[index];
          return GestureDetector(
            onTap: () {},
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage(
                      hotels.imageURL,
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 220),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                      color: Colors.transparent.withOpacity(0.4),
                    ),
                    child: ListTile(
                      leading: Icon(Icons.location_on, color: Colors.white),
                      title: Text(
                        hotels.location,
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        hotels.city,
                        style: TextStyle(
                          color: Colors.white.withOpacity(1),
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ),
                ),

                // USE STACK TO ADD LISTILE TO BOTTOM CONTAINER
                /* Padding(
                          padding: const EdgeInsets.only(top: 220),
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(20),
                                bottomRight: Radius.circular(20),
                              ),
                              color: Colors.transparent.withOpacity(0.7),
                            ),
                            child: ListTile(
                              title: Center(
                                child: Text(
                                  hotels.name,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 20,
                                      fontWeight: FontWeight.w600),
                                ),
                              ),
                            ),
                          ),
                        ), */
              ),
            ),
          );
        },
      ),
    );
  }

  hotelsLabel() {
    return Container(
      height: 40,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              'BEST HOTELS',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w700),
            ),
          ),
          FlatButton(
            onPressed: () {},
            child: Text(
              'See all',
              style: TextStyle(
                fontSize: 18,
                fontStyle: FontStyle.italic,
                color: Colors.blueAccent,
              ),
            ),
          ),
        ],
      ),
    );
  }

  hotelsPreview() {
    return Container(
      height: 278,
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: _previewHotels.length,
        itemBuilder: (context, int index) {
          final deal = _previewHotels[index];
          return Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(deal.imageURL),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.only(top: 200),
              child: Container(
                color: Colors.transparent.withOpacity(0.7),
                height: 10,
                width: double.infinity,
                child: ListTile(
                  title: Text(
                    deal.name,
                    style: TextStyle(
                      fontSize: 24,
                      color: Colors.grey,
                    ),
                  ),
                  subtitle: Text(
                    deal.descp,
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 14,
                    ),
                    maxLines: 2,
                    softWrap: true,
                  ),
                  trailing: Text(
                    '\$${deal.price} per night',
                    style: TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

final List<Deal> _bestCafe = [
  Deal(
    imageURL: 'images/best_cafe/cafe1.jpg',
    location: 'France',
    city: 'Paris',
  ),
  Deal(
    imageURL: 'images/best_cafe/cafe2.jpg',
    location: 'France',
    city: 'Nice',
  ),
  Deal(
    imageURL: 'images/best_cafe/cafe3.jpg',
    location: 'UK',
    city: 'Manchester',
  ),
  Deal(
    imageURL: 'images/best_cafe/cafe4.jpg',
    location: 'Malaysia',
    city: 'Kucing',
  ),
];
final List<Deal> _bestHotels = [
  Deal(
    imageURL: 'images/best_hotels/best1.jpg',
    location: 'Indonesia',
    city: 'Bali',
  ),
  Deal(
    imageURL: 'images/best_hotels/best2.jpg',
    location: 'Italy',
    city: 'Milan',
  ),
  Deal(
    imageURL: 'images/best_hotels/best3.jpg',
    location: 'USA',
    city: 'New York',
  ),
  Deal(
    imageURL: 'images/best_hotels/best4.jpg',
    location: 'Germany',
    city: 'Munich',
  ),
];

final List<Deal> _previewHotels = [
  Deal(
    imageURL: 'images/hotel1.jpeg',
    name: 'DELUXE ROOM',
    descp: '2 beds, Breakfast and Dinner, Spa, High Channel TV',
    price: 500,
  ),
  Deal(
    imageURL: 'images/hotel3.jpeg',
    name: 'QUEEN ROOM',
    descp: '2 beds, Breakfast and Dinner, Spa, WiFi, Good View ',
    price: 1000,
  ),
  Deal(
    imageURL: 'images/hotel4.jpeg',
    name: 'MINI ROOM',
    descp: '2 beds, Breakfast, Dinner,',
    price: 200,
  )
];
