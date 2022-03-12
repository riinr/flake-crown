{
  description = ''Loads environment variables from `.env`.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."dotenv-main".url = "path:./main";
  inputs."dotenv-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-2_0_0".url = "path:./2_0_0";
  inputs."dotenv-2_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-2_0_1".url = "path:./2_0_1";
  inputs."dotenv-2_0_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-2_0_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_0".url = "path:./v1_0_0";
  inputs."dotenv-v1_0_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_3".url = "path:./v1_0_3";
  inputs."dotenv-v1_0_3".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_3".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_0_4".url = "path:./v1_0_4";
  inputs."dotenv-v1_0_4".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_0_4".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_1_0".url = "path:./v1_1_0";
  inputs."dotenv-v1_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."dotenv-v1_1_1".url = "path:./v1_1_1";
  inputs."dotenv-v1_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."dotenv-v1_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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