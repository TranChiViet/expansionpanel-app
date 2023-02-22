import 'models/product.dart';
import 'models/shop.dart';

List<Product> productsList = [
  const Product(
    shop: 'Shop 1',
    shopId: '1',
    id: '1',
    name: 'Ổ cắm điện đa năng shoptida sạc nhanh cho linh kiện điện tử',
    description: 'Thông tin sản phẩm 1',
    price: 100,
    image:
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    categories: const ['Loại 1', 'loại 2'],
    // productCategories: [Categories(category: 'Loại 1'),Categories(category: 'Loại 2'),],
  ),
  const Product(
    shop: 'Shop 1',
    shopId: '2',
    id: '2',
    name: 'Đèn treo màn hình Xiaomi mijia MJGJD01YL - Hàng chất lượng cao',
    description: 'Thông tin sản phẩm 2',
    price: 200,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    categories: const ['Loại 2', 'loại 3'],
    // productCategories: [Categories(category: 'Loại 2'),Categories(category: 'Loại 3'),],
  ),
  const Product(
    shop: 'Shop 2',
    shopId: '3',
    id: '3',
    name: 'Màn hình vi tính Xiaomi Mi Redmi Desktop Monitor 24VINA',
    description: 'Thông tin sản phẩm 3',
    price: 300,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    categories: const ['Loại 3', 'loại 4'],
    // productCategories: [Categories(category: 'Loại 3',)],
  ),
  const Product(
    shop: 'Shop 2',
    shopId: '4',
    id: '1',
    name: 'Dây cáp custom AKKO',
    description: 'Thông tin sản phẩm 1',
    price: 100,
    image:
        'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
    categories: const ['Loại 1', 'loại 2'],
    // productCategories: [Categories(category: 'Loại 1'),Categories(category: 'Loại 2'),],
  ),
  const Product(
    shop: 'Shop 3',
    shopId: '5',
    id: '2',
    name: 'Giày Adisdas',
    description: 'Thông tin sản phẩm 2',
    price: 200,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
    categories: const ['Loại 2', 'loại 3'],
    // productCategories: [Categories(category: 'Loại 2'),Categories(category: 'Loại 3'),],
  ),
  const Product(
    shop: 'Shop 3',
    shopId: '6',
    id: '3',
    name: 'Áo thun Adididas',
    description: 'Thông tin sản phẩm 3',
    price: 300,
    image:
        'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
    categories: const ['Loại 3', 'loại 4'],
    // productCategories: [Categories(category: 'Loại 3',)],
  ),
];

List<Product> productFiltList = [];

// List<Shop> shopsList = [
//   Shop(
//     id: '1',
//     name: 'Shop 1',
//     products: [
//       const Product(
//         id: '1',
//         name: 'Ổ cắm điện đa năng shoptida sạc nhanh cho linh kiện điện tử',
//         description: 'Thông tin sản phẩm 1',
//         price: 100,
//         image:
//             'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
//         categories: const ['Loại 1', 'loại 2'],
//         // productCategories: [Categories(category: 'Loại 1'),Categories(category: 'Loại 2'),],
//       ),
//       const Product(
//         id: '2',
//         name: 'Đèn treo màn hình Xiaomi mijia MJGJD01YL - Hàng chất lượng cao',
//         description: 'Thông tin sản phẩm 2',
//         price: 200,
//         image:
//             'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
//         categories: const ['Loại 2', 'loại 3'],
//         // productCategories: [Categories(category: 'Loại 2'),Categories(category: 'Loại 3'),],
//       ),
//       const Product(
//         id: '3',
//         name: 'Màn hình vi tính Xiaomi Mi Redmi Desktop Monitor 24VINA',
//         description: 'Thông tin sản phẩm 3',
//         price: 300,
//         image:
//             'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
//         categories: const ['Loại 3', 'loại 4'],
//         // productCategories: [Categories(category: 'Loại 3',)],
//       ),
//     ],
//   ),
//   Shop(
//     id: '2',
//     name: 'Shop 2',
//     products: [
//       const Product(
//         id: '1',
//         name: 'Dây cáp custom AKKO',
//         description: 'Thông tin sản phẩm 1',
//         price: 100,
//         image:
//             'https://cdn.pixabay.com/photo/2016/10/02/22/17/red-t-shirt-1710578_1280.jpg',
//         categories: const ['Loại 1', 'loại 2'],
//         // productCategories: [Categories(category: 'Loại 1'),Categories(category: 'Loại 2'),],
//       ),
//       const Product(
//         id: '2',
//         name: 'Giày Adisdas',
//         description: 'Thông tin sản phẩm 2',
//         price: 200,
//         image:
//             'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e8/Trousers%2C_dress_%28AM_1960.022-8%29.jpg/512px-Trousers%2C_dress_%28AM_1960.022-8%29.jpg',
//         categories: const ['Loại 2', 'loại 3'],
//         // productCategories: [Categories(category: 'Loại 2'),Categories(category: 'Loại 3'),],
//       ),
//       const Product(
//         id: '3',
//         name: 'Áo thun Adididas',
//         description: 'Thông tin sản phẩm 3',
//         price: 300,
//         image:
//             'https://upload.wikimedia.org/wikipedia/commons/thumb/1/14/Cast-Iron-Pan.jpg/1024px-Cast-Iron-Pan.jpg',
//         categories: const ['Loại 3', 'loại 4'],
//         // productCategories: [Categories(category: 'Loại 3',)],
//       ),
//     ],
//   ),
// ];
