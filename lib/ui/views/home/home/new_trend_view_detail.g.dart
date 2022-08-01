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
            padding: context.padding2xHorizontal,
            child: Card(
              child: Padding(
                padding: context.paddingXHorizontal + context.paddingXVertical,
                child: Column(
                    children: List<Widget>.generate(
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
                )),
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
      children: List<Widget>.generate(
        sortTitleList.length,
        (index) => CustomTextButton(
          title: sortTitleList[index].toString(),
          textColor: context.mediumBlack,
          onPressed: () {},
        ),
      ),
    );
  }
}

class ProductList extends StatelessWidget {
  const ProductList({
    Key? key,
    required this.appStringConstants,
  }) : super(key: key);

  final AppStringConstants? appStringConstants;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      shrinkWrap: true,
      primary: false,
      crossAxisCount: context.gridViewCrossAxisCount,
      children: [
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath1,
          title: appStringConstants!.newTrendProductTitle1,
          subTitle: appStringConstants!.newTrendProductSubTitle1,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath2,
          title: appStringConstants!.newTrendProductTitle2,
          subTitle: appStringConstants!.newTrendProductSubTitle2,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath3,
          title: appStringConstants!.newTrendProductTitle3,
          subTitle: appStringConstants!.newTrendProductSubTitle3,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath4,
          title: appStringConstants!.newTrendProductTitle4,
          subTitle: appStringConstants!.newTrendProductSubTitle4,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath5,
          title: appStringConstants!.newTrendProductTitle5,
          subTitle: appStringConstants!.newTrendProductSubTitle5,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath6,
          title: appStringConstants!.newTrendProductTitle6,
          subTitle: appStringConstants!.newTrendProductSubTitle6,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath1,
          title: appStringConstants!.newTrendProductTitle1,
          subTitle: appStringConstants!.newTrendProductSubTitle1,
        ),
        CustomMediumCard(
          imagePath: appStringConstants!.newTrendProductImagePath2,
          title: appStringConstants!.newTrendProductTitle2,
          subTitle: appStringConstants!.newTrendProductSubTitle2,
        ),
      ],
    );
  }
}
