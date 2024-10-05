resource "spotify_playlist" "Bollywood" {
    name="Bollywood"
    tracks = [ "3xMHXmedL5Rvfxmiar9Ryv" ]
  
}

data "spotify_search_track" "anirudh" {
    artist = "anirudh"
  
}

resource "spotify_playlist" "songs" {
    name="songs"
    tracks = [data.spotify_search_track.anirudh.tracks[0].id,
    data.spotify_search_track.anirudh.tracks[1].id,
    data.spotify_search_track.anirudh.tracks[2].id]
  
}