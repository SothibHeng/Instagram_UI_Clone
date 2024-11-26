import 'package:flutter/cupertino.dart';
import '../core/response/api_response.dart';
import '../data/models/blog_model.dart';
import '../data/repositories/blog_repository.dart';

class BlogViewModel extends ChangeNotifier {
  final BlogRepository blogRepository = BlogRepository();
  ApiResponse<BlogModel> blog = ApiResponse.loading();

  setBlogList(ApiResponse<BlogModel> response){
    print('viewModel');
    blog = response;
    notifyListeners();
  }

//   method fetch blog
  Future<dynamic> fetchAllBlogs() async{
    await blogRepository.getAllBlogs()
        .then((blog) => setBlogList(ApiResponse.completed(blog)))
        .onError((error, stackTrace)=> ApiResponse.error(stackTrace.toString()))
    ;
  }
}