{
  description = ''Low-level multisync bindings to the ListenBrainz web API.'';
  inputs."listenbrainz-master".url = "path:./master";
  inputs."listenbrainz-0_1_0".url = "path:./0_1_0";
  inputs."listenbrainz-0_1_1".url = "path:./0_1_1";
  inputs."listenbrainz-0_1_2".url = "path:./0_1_2";
  inputs."listenbrainz-0_2".url = "path:./0_2";
  inputs."listenbrainz-0_2_1".url = "path:./0_2_1";
  outputs = { self, nixpkgs, ...}@inputs:
    let lib = import ./lib.nix;
    in lib.mkProjectOutput {
      inherit self nixpkgs;
      refs = builtins.removeAttrs inputs ["self" "nixpkgs"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}