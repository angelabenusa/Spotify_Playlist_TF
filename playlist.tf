resource "spotify_playlist" "Rap" {
    name = "Rap"
    tracks = ["1CDQzbCz4KSQxHe7LMEgRM"]
}

data "spotify_search_track" "adele" {
    artist = "Adele"

}

resource "spotify_playlist" "skyfall"{
    name = "skyfall"
    tracks = [data.spotify_search_track.adele.tracks[0].id,
    data.spotify_search_track.adele.tracks[1].id,
    data.spotify_search_track.adele.tracks[3].id]
}