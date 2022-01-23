import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sushi_throne/screens/admin/addproduct.dart';
import 'category.dart';
import 'brand.dart';

enum Page { dashboard, manage }

class Admin extends StatefulWidget {
  @override
  _AdminState createState() => _AdminState();
}

class _AdminState extends State<Admin> {
  Page _selectedPage = Page.dashboard;
  MaterialColor active = Colors.red;
  MaterialColor notActive = Colors.grey;

  TextEditingController categoryController = TextEditingController();
  TextEditingController brandController = TextEditingController();

  TextEditingController productController = TextEditingController();

  TextEditingController productController2 = TextEditingController();

  TextEditingController productController3 = TextEditingController();

  TextEditingController productController4 = TextEditingController();

  TextEditingController productController5 = TextEditingController();


  GlobalKey<FormState> _categoryFormKey = GlobalKey();
  GlobalKey<FormState> _brandFormKey = GlobalKey();
  GlobalKey<FormState> _productFormKey = GlobalKey();

  BrandService _brandService = BrandService();
  CategoryService _categoryService = CategoryService();
  ProductService _productService = ProductService();



  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Row(
            children: <Widget>[
              Expanded(
                  child: FlatButton.icon(
                      onPressed: () {
                        setState(() => _selectedPage = Page.dashboard);
                      },
                      icon: Icon(
                        Icons.dashboard,
                        color: _selectedPage == Page.dashboard
                            ? active
                            : notActive,
                      ),
                      label: Text('Dashboard'))),
              Expanded(
                  child: FlatButton.icon(
                      onPressed: () {
                        setState(() => _selectedPage = Page.manage);
                      },
                      icon: Icon(
                        Icons.sort,
                        color:
                            _selectedPage == Page.manage ? active : notActive,
                      ),
                      label: Text('Manage'))),
            ],
          ),
          elevation: 0.0,
          backgroundColor: Colors.white,
        ),
        body: _loadScreen());
  }

  Widget _loadScreen() {
    switch (_selectedPage) {
      case Page.dashboard:
        return Column(
          children: <Widget>[
            // ListTile(
            //   subtitle: FlatButton.icon(
            //     onPressed: null,
            //     icon: Icon(
            //       Icons.attach_money,
            //       size: 30.0,
            //       color: Colors.green,
            //     ),
            //     label: Text('12,000',
            //         textAlign: TextAlign.center,
            //         style: TextStyle(fontSize: 30.0, color: Colors.green)),
            //   ),
            //   title: Text(
            //     'Revenue',
            //     textAlign: TextAlign.center,
            //     style: TextStyle(fontSize: 24.0, color: Colors.grey),
            //   ),
            // ),
            Expanded(
              child: GridView(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.people_outline),
                              label: Text("Users")),
                          subtitle: Text(
                            '7',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.category),
                              label: Text("Categories")),
                          subtitle: Text(
                            '23',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.track_changes),
                              label: Text("Producs")),
                          subtitle: Text(
                            '120',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.tag_faces),
                              label: Text("Sold")),
                          subtitle: Text(
                            '13',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.shopping_cart),
                              label: Text("Orders")),
                          subtitle: Text(
                            '5',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(22.0),
                    child: Card(
                      child: ListTile(
                          title: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(Icons.close),
                              label: Text("Return")),
                          subtitle: Text(
                            '0',
                            textAlign: TextAlign.center,
                            style: TextStyle(color: active, fontSize: 60.0),
                          )),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
        break;
      case Page.manage:
        return ListView(
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.add),
              title: Text("Add product"),
              onTap: () {
                _productAlert();
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.change_history),
              title: Text("Products list"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_circle),
              title: Text("Add category"),
              onTap: () {
                _categoryAlert();
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.category),
              title: Text("Category list"),
              onTap: () {},
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.add_circle_outline),
              title: Text("Add brand"),
              onTap: () {
                _brandAlert();
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.library_books),
              title: Text("brand list"),
              onTap: () {
                _brandService.getBrands();
              },
            ),
            Divider(),
          ],
        );
        break;
      default:
        return Container();
    }
  }

  void _categoryAlert() {
    var alert = new AlertDialog(
      content: Form(
        key: _categoryFormKey,
        child: TextFormField(
          controller: categoryController,
          validator: (value){
            if(value!.isEmpty){
              return 'category cannot be empty';
            }
          },
          decoration: InputDecoration(
            hintText: "add category"
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(onPressed: (){
          if(categoryController.text != null){
            _categoryService.createCategory(categoryController.text);
          }
           Fluttertoast.showToast(msg: 'category created');
          Navigator.pop(context);
        }, child: Text('ADD')),
        FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('CANCEL')),

      ],
    );

    showDialog(context: context, builder: (_) => alert);
  }

  void _brandAlert() {
    var alert = new AlertDialog(
      content: Form(
        key: _brandFormKey,
        child: TextFormField(
          controller: brandController,
          validator: (value){
            if(value!.isEmpty){
              return 'category cannot be empty';
            }
          },
          decoration: InputDecoration(
              hintText: "add brand"
          ),
        ),
      ),
      actions: <Widget>[
        FlatButton(onPressed: (){
          if(brandController.text != null){
            _brandService.createBrand(brandController.text);
          }
          Fluttertoast.showToast(msg: 'brand added');
          Navigator.pop(context);
        }, child: Text('ADD')),
        FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('CANCEL')),

      ],
    );

    showDialog(context: context, builder: (_) => alert);
  }

  void _productAlert() {
    var alert = new AlertDialog(
      content: Form(
        key: _productFormKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            TextFormField(
              controller: productController,
              validator: (value){
                if(value!.isEmpty){
                  return 'category cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: "add category"
              ),
              
            ),
            SizedBox(height: 10,),
                        TextFormField(
              controller: productController2,
              validator: (value2){
                if(value2!.isEmpty){
                  return 'description cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: "add description"
              ),
            ),
            TextFormField(
              controller: productController3,
              validator: (value3){
                if(value3!.isEmpty){
                  return 'image cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: "add url"
              ),
              
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: productController4,
              validator: (value4){
                if(value4!.isEmpty){
                  return 'name cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: "add name"
              ),
              
            ),
            SizedBox(height: 10,),
            TextFormField(
              controller: productController5,
              validator: (value5){
                if(value5!.isEmpty){
                  return 'price cannot be empty';
                }
              },
              decoration: InputDecoration(
                  hintText: "add price"
              ),
              
            ),
          ],
        ),
      ),
      actions: <Widget>[
        FlatButton(onPressed: (){
          if(productController.text != null){
             _productService.createProduct(productController.text,productController2.text,productController3.text,productController4.text,productController5.text);
          }
          Fluttertoast.showToast(msg: 'product added');
          Navigator.pop(context);
        }, child: Text('ADD')),
        FlatButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('CANCEL')),

      ],
    );

    showDialog(context: context, builder: (_) => alert);
  }

}