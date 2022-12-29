import 'package:CryptoCompare/data/remote/client/configs.dart';
import 'package:CryptoCompare/domain/entity/coin_entity.dart';
import 'package:CryptoCompare/presentation/pages/crypto_controller.dart';
import 'package:CryptoCompare/presentation/themes/app_colors.dart';
import 'package:CryptoCompare/presentation/themes/app_styles.dart';
import 'package:CryptoCompare/utils/json_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CryptoPage extends GetView<CryptoController> {
  const CryptoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('CryptoCompare'),
      ),
      body: controller.obx((state) => listView(state ?? []),
          onLoading: const Center(child: CircularProgressIndicator()),
          onEmpty: const Text('No data'),
          onError: (error) => Text(error ?? '')),
    );
  }

  Widget listView(List<CoinEntity> items) {
    return ListView.separated(
      itemCount: items.length,
      separatorBuilder: (ctx, i) => const Divider(),
      itemBuilder: (ctx, i) {
        return CoinCard(item: items[i]);
      },
    );
  }
}

class CoinCard extends StatefulWidget {
  final CoinEntity item;
  const CoinCard({Key? key, required this.item}) : super(key: key);
  @override
  CoinCardState createState() => CoinCardState();
}

class CoinCardState extends State<CoinCard>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation _colorTween;

  @override
  void initState() {
    _animationController = AnimationController(
        vsync: this, duration: const Duration(milliseconds: 300));
    _colorTween = ColorTween(begin: AppColors.black, end: AppColors.black3)
        .animate(_animationController);
    _animationController.addListener(() {
      if (_animationController.status == AnimationStatus.completed) {
        _animationController.reverse();
      }
      setState(() {});
    });
    super.initState();
  }

  @override
  void didUpdateWidget(covariant CoinCard oldWidget) {
    _animationController.forward();
    super.didUpdateWidget(oldWidget);
  }

  @override
  void dispose() {
    super.dispose();
    _animationController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
        animation: _colorTween,
        builder: (context, child) {
          return cointCard(item: widget.item);
        });
  }

  Widget cointCard({required CoinEntity item}) {
    return ListTile(
      leading: Image.network(Configs.coinImageUrl(item.imageUrl ?? '')),
      title: Text(
        item.name ?? '',
        style: AppStyles.bodyBold,
      ),
      subtitle: Text(
        item.fullName ?? '',
        style: AppStyles.label,
      ),
      trailing: Text(
        priceFormat(item.price ?? 0.0),
        style: AppStyles.bodyBold.copyWith(color: _colorTween.value),
      ),
    );
  }
}
