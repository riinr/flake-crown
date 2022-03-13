{
  description = ''Secure Hash Algorithm - 2, [224, 256, 384, and 512 bits]'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimsha2-master".dir   = "master";
  inputs."nimsha2-master".owner = "nim-nix-pkgs";
  inputs."nimsha2-master".ref   = "master";
  inputs."nimsha2-master".repo  = "nimsha2";
  inputs."nimsha2-master".type  = "github";
  inputs."nimsha2-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimsha2-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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