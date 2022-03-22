{
  description = ''An efficient HTTP parser written in pure nim. Help you to write HTTP services or clients via TCP, UDP, or even Unix Domain socket, etc.'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-httpkit-master.flake = false;
  inputs.src-httpkit-master.ref   = "refs/heads/master";
  inputs.src-httpkit-master.owner = "tulayang";
  inputs.src-httpkit-master.repo  = "httpkit";
  inputs.src-httpkit-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-httpkit-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-httpkit-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}