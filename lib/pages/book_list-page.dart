
import 'package:flutter/material.dart';
import 'book_details_page.dart';

class BookListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.transparent,
        elevation: 9,
        title: Text('Book List'),
      ),
      body: ListView(
        children:[
          BookCard(
            bookName: 'Twilight',
            authorName: 'Stephenie Meyer',
            rating: '4.5',
            coverAssetPath: 'images/twilight.jpeg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    bookName: 'Twilight',
                    authorName:'Stephenie Meyer',
                    description:'Twilight is a series of four fantasy romance novels, two companion novels, and one novella written by American author Stephenie Meyer.Released annually from 2005 through 2008, the four novels chart the later teen years of Bella Swan, a girl who moves to Forks, Washington, from Phoenix, Arizona and falls in love with a 104-year-old vampire named Edward Cullen. ',
                    coverAssetPath: 'images/twilight.jpeg',
                  ),
                ),
              );
            },
          ),
          BookCard(
            bookName: 'Around the World in Eighty Days',
            authorName: 'Jules Verne',
            rating: '3.8',
            coverAssetPath:  'images/Verne_Tour_du_Monde.jpeg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    bookName: 'Around the World in Eighty Days',
                    authorName: 'Jules Verne',
                    description: 'Around the World in Eighty Days (French: Le Tour du monde en quatre-vingts jours) is an adventure novel by the French writer Jules Verne, first published in French in 1872. In the story, Phileas Fogg of London and his newly employed French valet Passepartout attempt to circumnavigate the world in 80 days on a wager of £20,000 (equivalent to £1.9 million in 2019) set by his friends at the Reform Club.',
                    coverAssetPath: 'images/Verne_Tour_du_Monde.jpeg',
                  ),
                ),
              );
            },
          ),
          BookCard(
            bookName: 'The Hunger Games',
            authorName: 'Suzanne Collins',
            rating: '5.0',
            coverAssetPath:  'images/1.jpeg',
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => BookDetailsPage(
                    bookName: 'The Hunger Games',
                    authorName: 'Suzanne Collins',
                    description: 'The Hunger Games universe is a dystopia set in Panem, a North American country consisting of the wealthy Capitol and 13 districts in varying states of poverty. Every year, children from the first 12 districts are selected via lottery to participate in a compulsory televised battle royale death match called The Hunger Games.',
                    coverAssetPath: 'images/1.jpeg',
                  ),
                ),
              );
            },
          ),

        ],
      ),
    );
  }
}