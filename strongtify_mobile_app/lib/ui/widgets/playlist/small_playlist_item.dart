import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:strongtify_mobile_app/models/playlist/playlist.dart';
import 'package:strongtify_mobile_app/ui/screens/playlist_detail/playlist_detail_screen.dart';

class SmallPlaylistItem extends StatefulWidget {
  const SmallPlaylistItem({
    super.key,
    required this.playlist,
    this.tapToRedirectToDetailScreen = true,
  });

  final Playlist playlist;
  final bool tapToRedirectToDetailScreen;

  @override
  State<SmallPlaylistItem> createState() => _SmallPlaylistItemState();
}

class _SmallPlaylistItemState extends State<SmallPlaylistItem> {
  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SizedBox(
        width: 56,
        height: 56,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: widget.playlist.imageUrl != null
              ? Image.network(
                  widget.playlist.imageUrl!,
                  fit: BoxFit.cover,
                )
              : Image.asset('assets/img/default-song-img.png'),
        ),
      ),
      title: Text(
        widget.playlist.name,
        style: const TextStyle(
          color: Colors.white,
          overflow: TextOverflow.ellipsis,
        ),
      ),
      subtitle: const Text(
        'Danh sách phát',
        style: TextStyle(
          color: Colors.white54,
        ),
      ),
      tileColor: Colors.transparent,
      contentPadding: const EdgeInsets.only(right: 0, left: 5),
      onTap: widget.tapToRedirectToDetailScreen
          ? () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: PlaylistDetailScreen(playlistId: widget.playlist.id),
              );
            }
          : null,
    );
  }
}
