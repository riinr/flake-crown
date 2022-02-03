{
  description = ''MPD client library'';
  inputs.src-mpdclient-v0_1_7.flake = false;
  inputs.src-mpdclient-v0_1_7.type = "github";
  inputs.src-mpdclient-v0_1_7.owner = "SolitudeSF";
  inputs.src-mpdclient-v0_1_7.repo = "mpdclient";
  inputs.src-mpdclient-v0_1_7.ref = "refs/tags/v0.1.7";
  
  outputs = { self, nixpkgs, src-mpdclient-v0_1_7, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-mpdclient-v0_1_7;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-mpdclient-v0_1_7"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}