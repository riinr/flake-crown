{
  description = ''dbus bindings for Nim'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dbus-master.flake = false;
  inputs.src-dbus-master.ref   = "refs/heads/master";
  inputs.src-dbus-master.owner = "zielmicha";
  inputs.src-dbus-master.repo  = "nim-dbus";
  inputs.src-dbus-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dbus-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dbus-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}