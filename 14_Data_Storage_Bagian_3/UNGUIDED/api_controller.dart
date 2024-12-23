import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;

class ApiController extends GetxController {
  final String baseUrl = 'https://jsonplaceholder.typicode.com/';

  var posts = <dynamic>[].obs; // State untuk menyimpan data posts
  var isLoading = false.obs; // State untuk indikator loading

  // Fetch posts
  Future<void> fetchPosts() async {
    isLoading.value = true;
    try {
      final response = await http.get(Uri.parse('$baseUrl/posts'));
      if (response.statusCode == 200) {
        posts.value = json.decode(response.body);
        _showSnackbar('Success', 'Data berhasil diambil!',
            const Color.fromARGB(255, 49, 122, 51));
      } else {
        throw Exception('Failed to load posts');
      }
    } catch (e) {
      _showSnackbar(
          'Error', e.toString(), const Color.fromARGB(255, 182, 41, 31));
    } finally {
      isLoading.value = false;
    }
  }

  // Create post
  Future<void> createPost() async {
    isLoading.value = true;
    try {
      final response = await http.post(
        Uri.parse('$baseUrl/posts'),
        headers: {'Content-Type': 'application/json'},
        body: json.encode({
          'title': 'Flutter Post',
          'body': 'Ini contoh POST.',
          'userId': 1,
        }),
      );

      if (response.statusCode == 201) {
        posts.add({
          'title': 'Flutter Post',
          'body': 'Ini contoh POST.',
          'id': posts.length + 1,
        });
        _showSnackbar('Success', 'Data berhasil ditambahkan!',
            const Color.fromARGB(255, 49, 122, 51));
      } else {
        throw Exception('Failed to create post');
      }
    } catch (e) {
      _showSnackbar(
          'Error', e.toString(), const Color.fromARGB(255, 182, 41, 31));
    } finally {
      isLoading.value = false;
    }
  }

  // Update post
  Future<void> updatePost() async {
    isLoading.value = true;
    try {
      final response = await http.put(
        Uri.parse('$baseUrl/posts/1'),
        body: json.encode({
          'title': 'Updated Title',
          'body': 'Updated Body',
          'userId': 1,
        }),
      );

      if (response.statusCode == 200) {
        final index = posts.indexWhere((post) => post['id'] == 1);
        if (index != -1) {
          posts[index] = {
            'id': 1,
            'title': 'Updated Title',
            'body': 'Updated Body',
            'userId': 1,
          };
          _showSnackbar('Success', 'Data berhasil diperbarui!',
              const Color.fromARGB(255, 49, 122, 51));
        }
      } else {
        throw Exception('Failed to update post');
      }
    } catch (e) {
      _showSnackbar(
          'Error', e.toString(), const Color.fromARGB(255, 182, 41, 31));
    } finally {
      isLoading.value = false;
    }
  }

  // Delete post
  Future<void> deletePost() async {
    isLoading.value = true;
    try {
      final response = await http.delete(Uri.parse('$baseUrl/posts/1'));

      if (response.statusCode == 200) {
        posts.removeWhere((post) => post['id'] == 1);
        _showSnackbar('Success', 'Data berhasil dihapus!',
            const Color.fromARGB(255, 49, 122, 51));
      } else {
        throw Exception('Failed to delete post');
      }
    } catch (e) {
      _showSnackbar(
          'Error', e.toString(), const Color.fromARGB(255, 182, 41, 31));
    } finally {
      isLoading.value = false;
    }
  }

  // Fungsi untuk menampilkan Snackbar
  void _showSnackbar(String title, String message, Color backgroundColor) {
    Get.snackbar(
      title,
      message,
      backgroundColor: backgroundColor,
      colorText: Colors.white,
      borderRadius: 8,
      margin: const EdgeInsets.all(12),
      duration: const Duration(seconds: 3),
      icon: Icon(
        title == 'Success' ? Icons.check_circle : Icons.error,
        color: Colors.white,
      ),
    );
  }
}
