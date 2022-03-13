{
  description = ''Websocket for httpx.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."websocketx-master".dir   = "master";
  inputs."websocketx-master".owner = "nim-nix-pkgs";
  inputs."websocketx-master".ref   = "master";
  inputs."websocketx-master".repo  = "websocketx";
  inputs."websocketx-master".type  = "github";
  inputs."websocketx-master".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx-master".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocketx-v0_1_0".dir   = "v0_1_0";
  inputs."websocketx-v0_1_0".owner = "nim-nix-pkgs";
  inputs."websocketx-v0_1_0".ref   = "master";
  inputs."websocketx-v0_1_0".repo  = "websocketx";
  inputs."websocketx-v0_1_0".type  = "github";
  inputs."websocketx-v0_1_0".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx-v0_1_0".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."websocketx-v0_1_2".dir   = "v0_1_2";
  inputs."websocketx-v0_1_2".owner = "nim-nix-pkgs";
  inputs."websocketx-v0_1_2".ref   = "master";
  inputs."websocketx-v0_1_2".repo  = "websocketx";
  inputs."websocketx-v0_1_2".type  = "github";
  inputs."websocketx-v0_1_2".inputs.nixpkgs.follows = "nixpkgs";
  inputs."websocketx-v0_1_2".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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