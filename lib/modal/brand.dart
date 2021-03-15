class  Brand{
  String name;
  String url;

Brand() {
    url="https://p8r7m4d5.stackpathcdn.com/images/brandimgs/o20181018102136256.png";
    name='Dr Cink';

  }
}

List<Brand> getBrands()
{
  var brands = new List<Brand>();

  var brand = new Brand();
  brand.name='Dr Cink';
  brands.add(brand);

  var morita = new Brand();
  morita.name="Dr Morita";
  morita.url="https://p8r7m4d5.stackpathcdn.com/images/brandimgs/o20190605032321206.png";
  brands.add(morita);

  var unicat = new Brand();
  unicat.name="Unicat";
  unicat.url="https://p8r7m4d5.stackpathcdn.com/images/brandimgs/o20200605111127855.png";
  brands.add(unicat);


  var paradiso = new Brand();
  paradiso.name="Paradiso Garden";
  paradiso.url="https://p8r7m4d5.stackpathcdn.com/images/brandimgs/o20201021123404868.png";
  brands.add(paradiso);
  return brands;
}
