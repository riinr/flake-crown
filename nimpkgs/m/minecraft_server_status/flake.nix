{
  description = ''Check minecraft server status'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."minecraft_server_status-main".dir   = "main";
  inputs."minecraft_server_status-main".owner = "nim-nix-pkgs";
  inputs."minecraft_server_status-main".ref   = "master";
  inputs."minecraft_server_status-main".repo  = "minecraft_server_status";
  inputs."minecraft_server_status-main".type  = "github";
  inputs."minecraft_server_status-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."minecraft_server_status-0_1_1".dir   = "0_1_1";
  inputs."minecraft_server_status-0_1_1".owner = "nim-nix-pkgs";
  inputs."minecraft_server_status-0_1_1".ref   = "master";
  inputs."minecraft_server_status-0_1_1".repo  = "minecraft_server_status";
  inputs."minecraft_server_status-0_1_1".type  = "github";
  inputs."minecraft_server_status-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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