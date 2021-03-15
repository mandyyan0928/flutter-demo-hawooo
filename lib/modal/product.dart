
class Product {
  double price;
  double discountprice;
  String name;
  String url;

  Product() {
    url="https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20201008030710461.jpg";
    price=35.90;
    discountprice=26.50;
    name='Dr Morita Anti Wrinkle...';

  }
}

List<Product> products()
{
  var list = new List<Product>();
  list.add(unitcat());
  list.add(dv());
  list.add(morita());
  list.add(paradiso());
  return list;
}
List<Product> skinCareProducts()
{
  var list = new List<Product>();
  list.add(morita());
  list.add(paradiso());
  list.add(skincare3());
  list.add(skincare4());
  return list;
}

List<Product> makeUpProducts()
{
  var list = new List<Product>();
  list.add(unitcat());
  list.add(makeup2());
  list.add(makeup3());
  list.add(makeup4());
  return list;
}
List<Product> favouriteproducts()
{
  var list = new List<Product>();
  list.add(unitcat());
  list.add(dv());
  list.add(morita());
  list.add(paradiso()); list.add(unitcat());
  list.add(dv());
  list.add(morita());
  list.add(paradiso());
  return list;
}
Product unitcat() {
  var unitcatProduct=new Product();
  unitcatProduct.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20200805122345913.jpg';
  unitcatProduct.name='UNICAT CC Cushion ';
  return unitcatProduct;
}

Product paradiso() {
  var paradisoProduct=new Product();
  paradisoProduct.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20200618010454845.jpg';
  paradisoProduct.name='Paradiso Garden Skin Care Set';
  paradisoProduct.price=100;
  paradisoProduct.discountprice=88;
  return paradisoProduct;
}
Product morita() {
  var morita=new Product();
  morita.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20201008024749993.jpg';
  morita.name='Dr.Morita Six Essence Eye Serum ';
  return morita;
}
Product dv() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20200914111358676.jpg';
  dv.name='DV Beauty Plus Antioxidant Drink ';
  dv.price=65.00;
  dv.discountprice=20.80;
  return dv;
}
Product makeup2() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20201210102637465.jpg';
  dv.name='DR.CINK Essence Lip Balm ';
  dv.price=65.00;
  dv.discountprice=20.80;
  return dv;
}
Product makeup3() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20210106121748688.jpg';
  dv.name='DR.CINK Essence Lip Balm ';
  dv.price=65.00;
  dv.discountprice=20.80;
  return dv;
}Product makeup4() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com/images/webimgs/n20200817110918109.jpg';
  dv.name='British  Teatime Eye-shadow';
  dv.price=65.00;
  dv.discountprice=20.80;
  return dv;
}

Product skincare3() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20190129044324134.jpg';
  dv.name='UNICAT Brightening Plus Firming';
  dv.price=65.00;
  dv.discountprice=20.80;
  return dv;
}

Product skincare4() {
  var dv=new Product();
  dv.url='https://p8r7m4d5.stackpathcdn.com//images/webimgs/n20200422092941397.jpg';
  dv.name='DR.CINK  Makeup Remover 200ml';
  dv.price=55.00;
  dv.discountprice=38.00;
  return dv;
}