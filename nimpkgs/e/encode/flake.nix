{
  description = ''Encode/decode utf8 utf16 and utf32.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."encode-master".dir   = "master";
  inputs."encode-master".owner = "nim-nix-pkgs";
  inputs."encode-master".ref   = "master";
  inputs."encode-master".repo  = "encode";
  inputs."encode-master".type  = "github";
  inputs."encode-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."encode-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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