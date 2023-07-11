import 'package:fl_components/themes/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({super.key});

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  final List<int> imagenesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    super.initState();
    scrollController.addListener(() {
      // print('${scrollController.position.pixels} - ${scrollController.position.maxScrollExtent}');
      if ((scrollController.position.pixels + 500) >=
          scrollController.position.maxScrollExtent) {
        fechaData();
      }
    });
  }

  Future fechaData() async {
    if (isLoading) return;
    isLoading = true;
    setState(() {});
    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    add5();
    isLoading = false;
    setState(() {});
    if (scrollController.position.pixels + 80 <=  scrollController.position.maxScrollExtent) return;
    scrollController.animateTo(
      scrollController.position.pixels + 100,
      duration: const Duration(milliseconds: 300),
      curve: Curves.fastOutSlowIn,
    );
  }

  void add5() {
    final lastId = imagenesIds.last;
    setState(() {
      imagenesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    });
  }

  Future<void> onRefresh () async {
    await Future.delayed(const Duration(seconds: 2));
    final lastId = imagenesIds.last;
    imagenesIds.clear();
    imagenesIds.add(lastId + 1);
    add5();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            RefreshIndicator(
              color: AppTheme.primary,
              onRefresh: onRefresh,
              child: ListView.builder(
                physics: const BouncingScrollPhysics(),
                controller: scrollController,
                itemCount: imagenesIds.length,
                itemBuilder: (BuildContext context, int index) {
                  return FadeInImage(
                    width: double.infinity,
                    height: 300,
                    fit: BoxFit.cover,
                    placeholder: const AssetImage('assets/jar-loading.gif'),
                    image: NetworkImage(
                        'https://picsum.photos/id/${imagenesIds[index]}/500/300'),
                  );
                },
              ),
            ),
            isLoading
                ? Positioned(
                    bottom: 40,
                    left: size.width * 0.5 - 30,
                    child: const _LoadinIcon(),
                  )
                : const Text('')
          ],
        ),
      ),
    );
  }
}

class _LoadinIcon extends StatelessWidget {
  const _LoadinIcon();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      height: 60,
      width: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.7),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
