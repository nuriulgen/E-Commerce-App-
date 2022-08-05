part of './new_trend_view_detail.dart';

class FilterButton extends StatefulWidget {
  const FilterButton({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  State<FilterButton> createState() => FilterButtonState();
}

class FilterButtonState extends State<FilterButton> with ProjectSheetMixin {
  AppStringConstants? appStringConstants = AppStringConstants.instance;
  final String subTitle = 'All';
  List<String> filterTitle = [
    'Gender',
    'Product Type',
    'Style',
    'Leather / Non Leather',
    'Color',
    'Brand',
    'Body Fit',
    'Size',
    'Price',
  ];
  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        showCustomSheet(
          context,
          Padding(
            padding: context.paddingXHorizontal,
            child: Card(
              child: Padding(
                padding: context.paddingXVertical,
                child: Column(children: _filterTitleListFunction()),
              ),
            ),
          ),
          'Filter',
          true,
        );
      },
      child: SizedBox(
        width: context.hw150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.tune_outlined, size: context.hw30, color: context.chasm),
            Text(
              widget.appStringConstants!.newTrendTabTitle2,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: context.chasm),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> _filterTitleListFunction() {
    return List<Widget>.generate(
      filterTitle.length,
      (index) => Column(
        children: [
          GestureDetector(
            child: ListTile(
              title: Text(filterTitle[index].toString()),
              trailing: Text(subTitle),
            ),
          ),
          const Divider(),
        ],
      ),
    );
  }
}

class SortButton extends StatefulWidget {
  const SortButton({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  State<SortButton> createState() => _SortButtonState();
}

class _SortButtonState extends State<SortButton> with ProjectDialogMixin {
  List<String> sortTitleList = [
    'Recommend',
    'What\'s New',
    'Price: High to low',
    'Price: High to hight',
  ];
  @override
  Widget build(BuildContext context) {
    return CustomOutlinedButton(
      onPressed: () {
        showCustomDialog(
          context,
          SizedBox(
            height: context.hw200,
            width: context.hw330,
            child: _sortTitle(context),
          ),
          [],
        );
      },
      child: SizedBox(
        width: context.hw150,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.filter_list_outlined,
                size: context.hw30, color: context.chasm),
            Text(
              widget.appStringConstants!.newTrendTabTitle1,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: context.chasm),
            ),
          ],
        ),
      ),
    );
  }

  Column _sortTitle(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: _sortTitleListFunction(context),
    );
  }

  List<Widget> _sortTitleListFunction(BuildContext context) {
    return List<Widget>.generate(
      sortTitleList.length,
      (index) => CustomTextButton(
        title: sortTitleList[index].toString(),
        textColor: context.mediumBlack,
        onPressed: () {},
      ),
    );
  }
}

class ProductList extends StatefulWidget {
  const ProductList({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  AppStringConstants? appStringConstants = AppStringConstants.instance;

  var productTitle = [
    AppStringConstants.instance!.newTrendProductTitle1,
    AppStringConstants.instance!.newTrendProductTitle2,
    AppStringConstants.instance!.newTrendProductTitle3,
    AppStringConstants.instance!.newTrendProductTitle4,
    AppStringConstants.instance!.newTrendProductTitle5,
    AppStringConstants.instance!.newTrendProductTitle6,
  ];

  var productSubTitle = [
    AppStringConstants.instance!.newTrendProductSubTitle1,
    AppStringConstants.instance!.newTrendProductSubTitle2,
    AppStringConstants.instance!.newTrendProductSubTitle3,
    AppStringConstants.instance!.newTrendProductSubTitle4,
    AppStringConstants.instance!.newTrendProductSubTitle5,
    AppStringConstants.instance!.newTrendProductSubTitle6,
  ];

  var productImage = [
     AppStringConstants.instance!.newTrendProductImagePath1,
     AppStringConstants.instance!.newTrendProductImagePath2,
     AppStringConstants.instance!.newTrendProductImagePath3,
     AppStringConstants.instance!.newTrendProductImagePath4,
     AppStringConstants.instance!.newTrendProductImagePath5,
     AppStringConstants.instance!.newTrendProductImagePath6,
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: context.gridViewCrossAxisCount,
      children: _productList(),
    );
  }

  List<Widget> _productList() {
    return List<Widget>.generate(
      productTitle.length,
      (index) => Column(
        children: [
          CustomMediumCard(
            imagePath: productImage[index],
            title: productTitle[index],
            subTitle: productSubTitle[index],
          ),
        ],
      ),
    );
  }
}
