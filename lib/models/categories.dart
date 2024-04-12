import 'package:equatable/equatable.dart';

class Category extends Equatable {
  final String id;
  final String name;
  final String? description;
  final String imageUrl;

  const Category(
      {required this.id,
      required this.name,
      this.description,
      required this.imageUrl});

  factory Category.fromJson(Map<String, dynamic> json, {String? id}) {
    return Category(
        id: id ?? json['id'] ?? '',
        name: json['name'] ?? '',
        description: json['description'] ?? '',
        imageUrl: json['imageUrl'] ??
            'https://media.istockphoto.com/id/1012451942/photo/hes-got-that-runway-model-style.jpg?s=612x612&w=0&k=20&c=rni2jF9v459qqhwg_wAfTbvpH9ry_D3tvPjPaFmu6lg=');
  }

  @override
  List<Object?> get props => [id, name, description, imageUrl];

  static const categories = [
    Category(
      id: '1', 
      name: 'Sportswears', 
      imageUrl: 'https://media.istockphoto.com/id/1288362340/photo/young-businessman-in-suit-with-suitcase-isolated-on-white.jpg?s=612x612&w=0&k=20&c=empH5Nom-9sjE5PUHP5Mfu12uIIldMvuaXsXNWu3tS4='
      ),
       Category(
      id: '2', 
      name: 'Cycling', 
      imageUrl: 'https://media.istockphoto.com/id/1486147709/photo/portrait-of-a-mature-man-doing-stretching-in-public-park.jpg?s=1024x1024&w=is&k=20&c=u91c76Ppk_tVmaMrCZPnf-wKn3xu1hvexTdzsfXwTlI='
      ),
       Category(
      id: '3', 
      name: 'Footwears', 
      imageUrl: 'https://images.unsplash.com/photo-1617127365659-c47fa864d8bc?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8M3x8bWVuJTIwZmFzaGlvbnxlbnwwfHwwfHx8MA%3D%3D'
      ),
       Category(
      id: '4', 
      name: 'Accessories ', 
      imageUrl: 'https://images.unsplash.com/photo-1626557981101-aae6f84aa6ff?w=500&auto=format&fit=crop&q=60&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTV8fG1lbiUyMGZhc2hpb258ZW58MHx8MHx8fDA%3D'
      ),
       Category(
      id: '5', 
      name: 'WaterSports', 
      imageUrl: 'https://media.istockphoto.com/id/1185241885/photo/saleswoman-shows-two-jacket-to-man-in-the-clothes-store.jpg?s=612x612&w=0&k=20&c=kiyc9rPo-VOdUQfqS-8RCoDDd9JCmhn9RJ0OX1IE8xo='
      ),
       Category(
      id: '6', 
      name: 'Camping', 
      imageUrl: 'https://media.istockphoto.com/id/1457491847/photo/two-tailors-involved-in-custom-making-client-suit.jpg?s=612x612&w=0&k=20&c=TtBQVHeMoxVo6BkND6H2K7r9-wuMGrx2L_v2inpUsjw='
      ),
       Category(
      id: '7', 
      name: 'Indoor', 
      imageUrl: 'https://media.istockphoto.com/id/1224573003/photo/mens-shorts-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=v1TwNK7F57UfHYZcXdzIhnR2RacdLFSwuhqU9IQL0e8='
      ),
       Category(
      id: '8', 
      name: 'Golf', 
      imageUrl: 'https://media.istockphoto.com/id/1057195154/photo/handsome-young-freelancer-in-denim-jacket-using-laptop-on-grey.jpg?s=612x612&w=0&k=20&c=ry3IuBT81BG5wDjSI-HHH2VKAeF5g730rID3XWmcTA0='
      ),
  ];
}
