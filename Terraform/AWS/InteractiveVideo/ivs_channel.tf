// Create a AWS IVS channel.
resource "aws_ivs_channel" "ivs_channel" {
  name         = "channel-1"
  authorized   = true
  latency_mode = "NORMAL"
  type         = "STANDARD"
}

// Create a AWS IVS playback key pair.
resource "aws_ivs_playback_key_pair" "ivs_channel_playback_key_pair" {
  name       = "aws-ivs-playback-key-pair-0"
  public_key = ""
}
