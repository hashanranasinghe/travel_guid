import 'package:flutter/material.dart';
import 'package:travel_guid/models/category.dart';
import 'package:travel_guid/models/travel_places.dart';

const dummyCategories = [
  Category(
      id: 'T1',
      name: 'Central',
      color: Colors.purple,
  ),
  Category(
    id: 'T2',
    name: 'Northern',
    color: Colors.red,
  ),
  Category(
    id: 'T3',
    name: 'Eastern',
    color: Colors.blue,
  ),
  Category(
    id: 'T4',
    name: 'Southern',
    color: Colors.green,
  ),
  Category(
    id: 'T5',
    name: 'Western',
    color: Colors.purple,
  ),
  Category(
    id: 'T6',
    name: 'North Western',
    color: Colors.purple,
  ),
  Category(
    id: 'T7',
    name: 'North Central',
    color: Colors.purple,
  ),
  Category(
    id: 'T8',
    name: 'Uva',
    color: Colors.purple,
  ),
  Category(
    id: 'T9',
    name: 'Sabaragamuwa',
    color: Colors.purple,
  ),
];

const dummyTravelPlaces = [

  // TravelPlaces(
  //     id: '',
  //     category: '',
  //     name: '',
  //     imageUrl: '',
  //     description: '',
  //     complexity: Complexity.simple
  // ),
   TravelPlaces(
      id: 'P1',
      category: 'T1',
      name: 'Temple of the Sacred Tooth Relic',
      imageUrl: 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/eb/SL_Kandy_asv2020-01_img33_Sacred_Tooth_Temple.jpg/1280px-SL_Kandy_asv2020-01_img33_Sacred_Tooth_Temple.jpg',
      description:'The Dalada Maligawa, also known as, the Temple of the Tooth, is one of the landmark sites in the city of Kandy. It is located in the heart of Kandy town surrounded by the lake and the commercial district. The Maligawa was once the royal palace inhabited by the king and his consorts, but after the demise of the Kandyan Kingdom the palace was transformed into a Buddhist temple that holds Buddha’s tooth.It is a must visit location for all tourists. Visitors can catch a glimpse of Buddhist rituals, explore the museum that includes several ancient artifacts, and pay your tribute to the tooth relic at one of the Buddhist ceremonies held at the premises. The architectural splendor and the historical importance of the Dalada Maligawa are sure to amaze you. Points of interest are: the Aluth Maligawa, Audience Hall and the World Buddhism Museum.Before preparing your visit keep in mind that the Maligawa is a Buddhist shrine and you will need to wear attire that covers your shoulders and legs.',
      complexity: Complexity.simple
  ),
  TravelPlaces(
      id: 'P2',
      category: 'T1',
      name: 'EXPLORE ROYAL BOTANICAL GARDENS, PERADENIYA',
      imageUrl: 'https://www.mahaweli.com/wp-content/uploads/2016/12/DSC_7958.jpg',
      description: 'Take a stroll through the country’s largest garden that is home to 4,000 different species of plants and over 10,000 trees. With its colourful flower beds, elegant archways and an avenue of royal palms, the beautifully-landscaped gardens are considered as the finest of its kind in Asia. It is famous for its vivid collection of orchids, the Giant Bamboo of Burma, the Cannonball tree and the Double Coconut Palm known for producing the world’s largest seed. Explore the gardens and get lost in the true wonder of nature.',
      complexity: Complexity.simple
  ),

  TravelPlaces(
      id: 'P4',
      category: 'T1',
      name: 'VISIT RAILWAY MUSEUM',
      imageUrl: 'https://www.mahaweli.com/wp-content/uploads/2016/12/DSC_7650.jpg',
      description: 'If you like travelling in trains, a visit to the National Railway Museum in Kandy is a must. The museum was declared open in 2014 to commemorate the 150th anniversary of railway service in Sri Lanka. Housed within the museum is an interesting collection of engines, carriages, rail cars, locomotives, trolleys and machinery belonging to different eras since railway travel began in the country in 1864.',
      complexity: Complexity.simple
  ),
  TravelPlaces(
      id: 'P5',
      category: 'T4',
      name: 'Yala National Park',
      imageUrl: 'https://www.taruvillas.com/our-stories/wp-content/uploads/sites/42/2019/08/Yala-National-Park.jpg',
      description: 'Go on a Wild Life Safari and explore a beautiful combination of a national park and reservation where leopards, peacocks, elephants, crocodiles, sloth bears, spotted dear, jackals, sambars and other exotic birds call home. The best season to visit is between February and July. Taru Villas – Yala makes for the perfect base to explore the Yala National Park, as well as Udawalawe and Bundala National Parks as well.',
      complexity: Complexity.challenging
  ),

  TravelPlaces(
      id: 'P6',
      category: 'T4',
      name: 'Mulkirigala Rock Temple',
      imageUrl: 'https://www.taruvillas.com/our-stories/wp-content/uploads/sites/42/2019/08/Mulkirigala-Rock-Temple.jpg',
      description: 'Mulkirigala is located close to Tangalle and is considered one of the South’s finest ancient monuments. It is made up of intricately-decorated ancient cave temples carved out of the flanks of an enormous rock outcrop. The temples were built on four separate levels at different times in history dating back to 3rdCentury B.C. Each level is connected by close to 500 steps, with wonderful views from the summit. Doing this trek will help you justify all the glorious meals you will no doubt be dining on at Taru Villas.',
      complexity: Complexity.hard
  ),

  TravelPlaces(
      id: 'P7',
      category: 'T4',
      name: 'Whale & Dolphin Watching',
      imageUrl: 'https://www.taruvillas.com/our-stories/wp-content/uploads/sites/42/2019/08/Whale-Dolphin-Watching.jpg',
      description: 'Mirissa is one of the perfect spots to sight the largest mammal on earth. Whale and dolphin watching has become one of the best things to do in the south and you will find a number of operators around this area offering trips to the Indian Ocean for dolphins, whales, and turtles spotting. The best time to visit is from December to March.',
      complexity: Complexity.challenging
  ),
];
