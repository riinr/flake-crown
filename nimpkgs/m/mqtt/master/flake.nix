{
  description = ''Wrapper for libpaho-mqtt, a C library that communicates with an MQTT pub/sub server.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-mqtt-master.flake = false;
  inputs.src-mqtt-master.ref   = "refs/heads/master";
  inputs.src-mqtt-master.owner = "barnybug";
  inputs.src-mqtt-master.repo  = "nim-mqtt";
  inputs.src-mqtt-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-mqtt-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-mqtt-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}