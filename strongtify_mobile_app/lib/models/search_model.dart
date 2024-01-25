import 'package:strongtify_mobile_app/models/album/album.dart';
import 'package:strongtify_mobile_app/models/artist/artist.dart';
import 'package:strongtify_mobile_app/models/genre/genre.dart';
import 'package:strongtify_mobile_app/models/playlist/playlist.dart';
import 'package:strongtify_mobile_app/models/song/song.dart';

class SearchModel {
  final List<Song> songs;
  final List<Album> albums;
  final List<Playlist> playlists;
  final List<Artist> artists;
  final List<Genre> genres;

  SearchModel({
    required this.songs,
    required this.albums,
    required this.playlists,
    required this.artists,
    required this.genres,
  });
}
