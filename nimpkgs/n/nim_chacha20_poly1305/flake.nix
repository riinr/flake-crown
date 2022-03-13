{
  description = ''xchacha20_poly1305, chacha20, poly1305'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nim_chacha20_poly1305-master".dir   = "master";
  inputs."nim_chacha20_poly1305-master".owner = "nim-nix-pkgs";
  inputs."nim_chacha20_poly1305-master".ref   = "master";
  inputs."nim_chacha20_poly1305-master".repo  = "nim_chacha20_poly1305";
  inputs."nim_chacha20_poly1305-master".type  = "github";
  inputs."nim_chacha20_poly1305-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nim_chacha20_poly1305-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"];
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}