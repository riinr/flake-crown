{
  description = ''Game Library in Nim with SDL2'';
  inputs.src-tinamou-master.flake = false;
  inputs.src-tinamou-master.type = "github";
  inputs.src-tinamou-master.owner = "Double-oxygeN";
  inputs.src-tinamou-master.repo = "tinamou";
  inputs.src-tinamou-master.ref = "refs/heads/master";
  
  
  inputs."sdl2".url = "path:../../../s/sdl2";
  inputs."sdl2".type = "github";
  inputs."sdl2".owner = "riinr";
  inputs."sdl2".repo = "flake-nimble";
  inputs."sdl2".ref = "flake-pinning";
  inputs."sdl2".dir = "nimpkgs/s/sdl2";

  outputs = { self, nixpkgs, src-tinamou-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tinamou-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-tinamou-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}