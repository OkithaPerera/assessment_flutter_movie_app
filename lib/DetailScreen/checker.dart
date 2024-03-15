import 'package:flutter/material.dart';
import 'package:assessment_flutter_movie_app/DetailScreen/MovieDetails.dart';
import 'TvSeriesDetail.dart';

class DescriptionCheckUI extends StatefulWidget {
  final dynamic newid;
  final dynamic newtype;
  DescriptionCheckUI(this.newid, this.newtype);

  @override
  State<DescriptionCheckUI> createState() => _DescriptionCheckUIState();
}

class _DescriptionCheckUIState extends State<DescriptionCheckUI> {
  checktype() {
    if (widget.newtype.toString() == 'movie') {
      return MovieDetails(
        id: widget.newid,
      );
    } else if (widget.newtype.toString() == 'tv') {
      return TvSeriesDetails(id: widget.newid);
    } else if (widget.newtype.toString() == 'person') {
      // return persondescriptionui(widget.id);
    } else {
      return errorui(context);
    }
  }

  @override
  Widget build(BuildContext context) {
    return checktype();
  }
}

Widget errorui(context) {
  return Scaffold(
    appBar: AppBar(
      title: const Text('Error'),
    ),
    body: Center(
      child: Text('no Such page found'),
    ),
  );
}
