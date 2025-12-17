import 'package:uniqlo/model/cost.dart';

class Uniqlo {
  String imgUrl;
  String imgTitle;
  String description;
  List<Cost> cost;

  //constructor
  Uniqlo(this.imgUrl, this.imgTitle, this.description, this.cost);

  static List samples = [
    Uniqlo(
      'assets/images/Corduroy dress.jpg',
      'Corduroy dress',
      'A corduroy dress is a soft, vintage-style dress in corduroy fabric with a relaxed shirt silhouette and waist detail, perfect for casual, comfortable outfits',
      [
        Cost(quantity: 1, unit1: 'piece', price: 80, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Crewneck sweatshirt.jpg', 
      'Crewneck sweatshirt',
      'A crewneck sweatshirt is a casual, long-sleeve pullover made from soft, comfortable fabric with a round, collarless neckline. It’s versatile and perfect for everyday wear or layering in cooler weather',
      [
        Cost(quantity: 1, unit1: 'piece', price: 40, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Denim shirt dress.jpg', 
      'Denim shirt dress',
      'A denim shirt dress is a casual dress made from denim fabric with a button-down front and shirt-style collar, combining the relaxed look of a shirt with the length and fit of a dress. It’s versatile, comfortable, and easy to style for everyday wear',
      [
        Cost(quantity: 1, unit1: 'piece', price: 60, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Flare jeans.jpg', 
      'Flare jeans',
      'A flare jeans is a style of denim pants that fits snugly through the hips and thighs and gradually widens from the knee down to the hem, creating a flared silhouette. It offers a retro-inspired look and balances proportions when paired with fitted or cropped tops',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Flare skirt.jpg', 
      'Flare skirt',
      'A flare skirt is a skirt that fits at the waist or hips and gradually widens toward the hem, creating a flowing, A-line silhouette. It offers a feminine look and allows comfortable movement, making it suitable for both casual and dressy outfits',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
      ),
    Uniqlo(
      'assets/images/High-rise boyfriend jeans.jpg',
      'High-rise boyfriend jeans',
      'High-rise boyfriend jeans are relaxed-fit jeans with a high waist and a slightly loose, straight or tapered leg. They offer a casual, laid-back look while providing comfort and a flattering waistline',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Jersey jacket.jpg', 
      'Jersey jacket',
      'A jersey jacket is a lightweight jacket made from soft, stretchy jersey fabric, offering comfort and ease of movement. It has a casual, relaxed look and is suitable for everyday wear or light layering',
      [
        Cost(quantity: 1, unit1: 'piece', price: 180, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Oversized bow tie shirt.jpg',
      'Oversized bow tie shirt',
      'An oversized bow tie shirt is a loose-fit shirt featuring a large bow tie detail at the neckline. It creates a playful yet elegant look, adding a statement accent to a classic shirt silhouette',
      [
        Cost(quantity: 1, unit1: 'piece', price: 40, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Padded mini shoulder bag.jpg',
      'Padded mini shoulder bag',
      'A padded mini shoulder bag is a small shoulder bag with cushioned padding that gives it a soft, rounded shape. It is lightweight, stylish, and ideal for carrying daily essentials while adding a modern touch to an outfit',
      [
        Cost(quantity: 1, unit1: 'piece', price: 40, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Polo dress.jpg', 
      'Polo dress',
      'A polo dress is a casual dress inspired by a polo shirt, featuring a collared neckline and a short button placket. It offers a sporty, comfortable look while remaining neat and easy to wear',
      [
        Cost(quantity: 1, unit1: 'piece', price: 80, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Sweatpants.jpg', 
      'Sweatpants',
      'Sweatpants are casual pants made from soft, comfortable fabric, designed with a relaxed fit and often an elastic waistband. They are ideal for lounging, exercising, or everyday casual wear',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Trench coat.jpg', 
      'Trench coat',
      'A trench coat is a classic long coat designed with a structured silhouette, often featuring a belt and a double-breasted front. It offers a timeless, elegant look while providing light protection from wind and rain',
      [
        Cost(quantity: 1, unit1: 'piece', price: 180, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Turtleneck sweater.jpg', 
      'Turtleneck sweater',
      'A turtleneck sweater is a knit top with a high, close-fitting collar that folds or stands up to cover the neck. It provides warmth and a clean, sophisticated look suitable for layering or wearing on its own',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/Twill wide pants.jpg', 
      'Twill wide pants',
      'Twill wide pants are trousers made from durable twill fabric with a wide-leg silhouette. They offer a structured yet comfortable fit, giving a polished look suitable for both casual and smart outfits',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
    Uniqlo(
      'assets/images/V-neck cardigan.jpg', 
      'V-neck cardigan',
      'A V-neck cardigan is a knit sweater with a V-shaped neckline and a button-down front. It is versatile and easy to layer, offering a classic and comfortable look for everyday wear',
      [
        Cost(quantity: 1, unit1: 'piece', price: 50, unit2: 'dollar')
      ],
    ),
  ];
}
