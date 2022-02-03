{
  description = ''OpenStreetMap API Lib for Nim'';
  inputs.src-openstreetmap-0_2_0.flake = false;
  inputs.src-openstreetmap-0_2_0.type = "github";
  inputs.src-openstreetmap-0_2_0.owner = "juancarlospaco";
  inputs.src-openstreetmap-0_2_0.repo = "nim-openstreetmap";
  inputs.src-openstreetmap-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-openstreetmap-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-openstreetmap-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-openstreetmap-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}