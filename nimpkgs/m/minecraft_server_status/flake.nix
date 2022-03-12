{
  description = ''Check minecraft server status'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs."minecraft_server_status-main".url = "path:./main";
  inputs."minecraft_server_status-main".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-main".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
  inputs."minecraft_server_status-0_1_1".url = "path:./0_1_1";
  inputs."minecraft_server_status-0_1_1".inputs.nixpkgs.follows = "nixpkgs";
  inputs."minecraft_server_status-0_1_1".inputs.flakeNimbleLib.follows = "flakeNimbleLib";
  
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