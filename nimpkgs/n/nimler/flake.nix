{
  description = ''Erlang/Elixir NIFs for nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."nimler-develop".url = "path:./develop";
  inputs."nimler-develop".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-develop".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-master".url = "path:./master";
  inputs."nimler-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v2_0".url = "path:./v2_0";
  inputs."nimler-v2_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v2_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v3_0".url = "path:./v3_0";
  inputs."nimler-v3_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v3_1".url = "path:./v3_1";
  inputs."nimler-v3_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v3_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_0".url = "path:./v4_0";
  inputs."nimler-v4_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_1".url = "path:./v4_1";
  inputs."nimler-v4_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_2".url = "path:./v4_2";
  inputs."nimler-v4_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_3".url = "path:./v4_3";
  inputs."nimler-v4_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_4".url = "path:./v4_4";
  inputs."nimler-v4_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_5".url = "path:./v4_5";
  inputs."nimler-v4_5".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_5".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."nimler-v4_6".url = "path:./v4_6";
  inputs."nimler-v4_6".inputs.nixpkgs.follows = "nixpkgs";
  inputs."nimler-v4_6".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@inputs:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib"]
  in lib.mkProjectOutput {
    inherit self nixpkgs;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
    refs = builtins.removeAttrs inputs args;
  };
}