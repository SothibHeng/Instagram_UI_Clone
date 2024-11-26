import '../../core/constants/api_url.dart';
import '../../core/services/api_service.dart';
import '../models/blog_model.dart';

class BlogRepository {
  // crete ApiService object
  final ApiService apiService = ApiService();
//   get blog
  Future<BlogModel> getAllBlogs() async{
    try{
      final blogData = await apiService.getApiService(ApiUrl.getAllBlogsUrl);
      return blogData;
    }catch(exception){
      rethrow;
    }
  }
}