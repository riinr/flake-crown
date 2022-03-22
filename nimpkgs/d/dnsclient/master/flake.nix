{
  description = ''Simple DNS Client & Library'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-dnsclient-master.flake = false;
  inputs.src-dnsclient-master.ref   = "refs/heads/master";
  inputs.src-dnsclient-master.owner = "ba0f3";
  inputs.src-dnsclient-master.repo  = "dnsclient.nim";
  inputs.src-dnsclient-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-dnsclient-master"];
  in lib.mkRefOutput {
    inherit self nixpkgs ;
    src  = deps."src-dnsclient-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  };
}