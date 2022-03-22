{
  description = ''PROXY Protocol enabler for aged programs'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-proxyproto-master.flake = false;
  inputs.src-proxyproto-master.ref   = "refs/heads/master";
  inputs.src-proxyproto-master.owner = "ba0f3";
  inputs.src-proxyproto-master.repo  = "libproxy.nim";
  inputs.src-proxyproto-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-proxyproto-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-proxyproto-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}