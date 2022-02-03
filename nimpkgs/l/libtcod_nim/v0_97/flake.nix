{
  description = ''Wrapper of the libtcod library for the Nim language.'';
  inputs.src-libtcod_nim-v0_97.flake = false;
  inputs.src-libtcod_nim-v0_97.type = "github";
  inputs.src-libtcod_nim-v0_97.owner = "Vladar4";
  inputs.src-libtcod_nim-v0_97.repo = "libtcod_nim";
  inputs.src-libtcod_nim-v0_97.ref = "refs/tags/v0.97";
  
  outputs = { self, nixpkgs, src-libtcod_nim-v0_97, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-libtcod_nim-v0_97;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-libtcod_nim-v0_97"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}