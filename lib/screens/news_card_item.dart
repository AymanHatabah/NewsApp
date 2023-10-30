import 'package:flutter/material.dart';
import 'package:news/models/NewsResponses.dart';
//import 'package:cached_network_image/cached_network_image.dart';

class NewsCaerdItem extends StatelessWidget {
  Articles articles;

  NewsCaerdItem(this.articles);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: Card(
        elevation: 12,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide(color: Colors.transparent)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  articles.urlToImage ?? "",
                  fit: BoxFit.fill,
                  height: 230,
                ),
              ),
              Text(
                articles.title ?? "",
                maxLines: 2,
                style: TextStyle(
                  fontSize: 22,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(articles.description ?? "",
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  )),
              Row(
                children: [
                  Expanded(
                    child: Text(articles.author ?? "",
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                        )),
                  ),
                  Text(articles.publishedAt?.substring(0, 10) ?? "",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                      ))
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
