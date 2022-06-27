{
  description = ''Test if an ip address is private'';

  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.ref   = "master";
  inputs.flakeNimbleLib.repo  = "nim-flakes-lib";
  inputs.flakeNimbleLib.type  = "github";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  
  inputs.src-github-enthus1ast-nimIsPrivateIp-master.flake = false;
  inputs.src-github-enthus1ast-nimIsPrivateIp-master.ref   = "refs/heads/master";
  inputs.src-github-enthus1ast-nimIsPrivateIp-master.owner = "enthus1ast";
  inputs.src-github-enthus1ast-nimIsPrivateIp-master.repo  = "nimIsPrivateIp";
  inputs.src-github-enthus1ast-nimIsPrivateIp-master.type  = "github";
  
  outputs = { self, nixpkgs, flakeNimbleLib, ...}@deps:
  let 
    lib  = flakeNimbleLib.lib;
    args = ["self" "nixpkgs" "flakeNimbleLib" "src-github-enthus1ast-nimIsPrivateIp-master"];
    over = if builtins.pathExists ./override.nix 
           then { override = import ./override.nix; }
           else { };
  in lib.mkRefOutput (over // {
    inherit self nixpkgs ;
    src  = deps."src-github-enthus1ast-nimIsPrivateIp-master";
    deps = builtins.removeAttrs deps args;
    meta = builtins.fromJSON (builtins.readFile ./meta.json);
  } );
}