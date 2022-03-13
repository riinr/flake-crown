{
  description = ''Whip is high performance web application server based on httpbeast a nest for redix tree based routing with some extra opmtizations.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."whip-master".dir   = "master";
  inputs."whip-master".owner = "nim-nix-pkgs";
  inputs."whip-master".ref   = "master";
  inputs."whip-master".repo  = "whip";
  inputs."whip-master".type  = "github";
  inputs."whip-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."whip-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."whip-0_2".dir   = "0_2";
  inputs."whip-0_2".owner = "nim-nix-pkgs";
  inputs."whip-0_2".ref   = "master";
  inputs."whip-0_2".repo  = "whip";
  inputs."whip-0_2".type  = "github";
  inputs."whip-0_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."whip-0_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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