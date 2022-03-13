{
  description = ''Static blog generator ala Jekyll.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."ipsumgenera-master".dir   = "master";
  inputs."ipsumgenera-master".owner = "nim-nix-pkgs";
  inputs."ipsumgenera-master".ref   = "master";
  inputs."ipsumgenera-master".repo  = "ipsumgenera";
  inputs."ipsumgenera-master".type  = "github";
  inputs."ipsumgenera-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."ipsumgenera-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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