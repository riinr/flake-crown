{
  description = ''Check minecraft server status'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-minecraft_server_status-main.flake = false;
  inputs.src-minecraft_server_status-main.owner = "GabrielLasso";
  inputs.src-minecraft_server_status-main.ref   = "main";
  inputs.src-minecraft_server_status-main.repo  = "minecraft_server_status";
  inputs.src-minecraft_server_status-main.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-minecraft_server_status-main"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-minecraft_server_status-main";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}