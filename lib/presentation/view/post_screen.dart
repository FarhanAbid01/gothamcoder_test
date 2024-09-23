import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gotham_test/presentation/postBloc/post_bloc.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {


  @override
  void initState() {
    context.read<PostBloc>().add(GetAllPostEvent());
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('PostScreen'),
      ),
      body: BlocBuilder<PostBloc , PostState>(builder: (context, state) {
        if(state is PostLoading){
          return const Center(child: CircularProgressIndicator());
        } else if(state is PostError){
          return Center(child: Text(state.failure.message));
        } else if(state is PostLoaded){
          return ListView.builder(
            itemCount: state.posts.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(state.posts[index].title??''),
                subtitle: Text(state.posts[index].body??''),
              );
            },
          );
        } else {
          return const Center(child: Text('No Data'));
        }
      }),
    );
  }
}
