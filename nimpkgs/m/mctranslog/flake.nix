{
  description = ''mctranslog - Transaction Log Package'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."mctranslog-master".dir   = "master";
  inputs."mctranslog-master".owner = "nim-nix-pkgs";
  inputs."mctranslog-master".ref   = "master";
  inputs."mctranslog-master".repo  = "mctranslog";
  inputs."mctranslog-master".type  = "github";
  inputs."mctranslog-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."mctranslog-v0_1_4".dir   = "v0_1_4";
  inputs."mctranslog-v0_1_4".owner = "nim-nix-pkgs";
  inputs."mctranslog-v0_1_4".ref   = "master";
  inputs."mctranslog-v0_1_4".repo  = "mctranslog";
  inputs."mctranslog-v0_1_4".type  = "github";
  inputs."mctranslog-v0_1_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."mctranslog-v0_1_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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